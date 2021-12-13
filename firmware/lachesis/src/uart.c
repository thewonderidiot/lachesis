#include "xuartlite_l.h"
#include "slip.h"
#include "intr.h"
#include "uart.h"

static void uart_send_byte(uart_t *uart, uint8_t byte);
static void uart_isr(void *uart_ptr);
static void uart_fill_tx_fifo(uart_t *uart);

int32_t uart_init(uart_t *uart, uint16_t device_id,
                  uint16_t int_id, uart_callback_t rx_callback,
                  uint8_t *rx_buffer, uint32_t rx_buffer_size,
                  uint8_t *tx_buffer, uint32_t tx_buffer_size)
{
    int32_t status;

    status = XUartLite_Initialize(&uart->device, device_id);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    uart->rx_callback = rx_callback;
    uart->rx_buffer = rx_buffer;
    uart->rx_buffer_size = rx_buffer_size;
    uart->rx_length = 0;

    uart->tx_buffer = tx_buffer;
    uart->tx_buffer_size = tx_buffer_size;
    uart->tx_start = 0;
    uart->tx_end = 0;
    uart->tx_length = 0;

    status = intr_attach(int_id, uart_isr, uart);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    XUartLite_EnableIntr(uart->device.RegBaseAddress);

    return XST_SUCCESS;
}

int32_t uart_send(uart_t *uart, uint8_t *data, uint32_t length)
{
    uint32_t free_space;
    uint32_t slipped_length;
    uint32_t i;

    free_space = uart->tx_buffer_size - uart->tx_length;
    slipped_length = slip_get_slipped_length(data, length);

    if (slipped_length > free_space)
    {
        return XST_FAILURE;
    }

    uart_send_byte(uart, SLIP_END);
    for (i = 0; i < length; i++)
    {
        switch (data[i])
        {
        case SLIP_END:
            uart_send_byte(uart, SLIP_ESC);
            uart_send_byte(uart, SLIP_ESC_END);
            break;
        case SLIP_ESC:
            uart_send_byte(uart, SLIP_ESC);
            uart_send_byte(uart, SLIP_ESC_ESC);
            break;
        default:
            uart_send_byte(uart, data[i]);
            break;
        }
    }
    uart_send_byte(uart, SLIP_END);

    Xil_ExceptionDisable();
    uart->tx_length += slipped_length;

    if (uart->tx_length == slipped_length)
    {
        uart_fill_tx_fifo(uart);
    }

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

static void uart_send_byte(uart_t *uart, uint8_t byte)
{
    uart->tx_buffer[uart->tx_end++] = byte;
    if (uart->tx_end >= uart->tx_buffer_size)
    {
        uart->tx_end = 0;
    }
}

static void uart_fill_tx_fifo(uart_t *uart)
{
    uint32_t base_addr = uart->device.RegBaseAddress;

    while ((uart->tx_length > 0) && !XUartLite_IsTransmitFull(base_addr))
    {
        XUartLite_SendByte(base_addr, uart->tx_buffer[uart->tx_start++]);
        if (uart->tx_start >= uart->tx_buffer_size)
        {
            uart->tx_start = 0;
        }
        uart->tx_length--;
    }
}

static void uart_isr(void *uart_ptr)
{
    uart_t *uart = (uart_t *)uart_ptr;
    uint32_t status_reg;

    status_reg = XUartLite_ReadReg(uart->device.RegBaseAddress, XUL_STATUS_REG_OFFSET);

    if (status_reg & (XUL_SR_RX_FIFO_FULL | XUL_SR_RX_FIFO_VALID_DATA))
    {
        // FIXME: RECEIVE
    }

    if ((status_reg & XUL_SR_TX_FIFO_EMPTY) && (uart->tx_length > 0))
    {
        uart_fill_tx_fifo(uart);
    }
}
