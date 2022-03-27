#include "xparameters.h"
#include "xuartlite_l.h"
#include "intr.h"
#include "uart.h"

static uart_t g_uart;

static void uart_send_byte(uint8_t byte);
static void uart_isr(void *uart_ptr);
static void uart_fill_tx_fifo(void);
static void uart_receive(void);

int32_t uart_init(uart_callback_t rx_callback)
{
    int32_t status;

    status = XUartLite_Initialize(&g_uart.device, XPAR_AXI_UARTLITE_0_DEVICE_ID);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    g_uart.rx_callback = rx_callback;
    g_uart.rx_count = 0;
    g_uart.rx_state = RX_STATE_IDLE;

    g_uart.tx_start = 0;
    g_uart.tx_end = 0;
    g_uart.tx_count = 0;

    status = intr_attach(XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR, uart_isr, NULL);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    XUartLite_EnableIntr(g_uart.device.RegBaseAddress);

    return XST_SUCCESS;
}

int32_t uart_send(void *buf, uint32_t length)
{
    uint32_t free_space;
    uint32_t slipped_length;
    uint32_t i;

    uint8_t *data = (uint8_t*)buf;

    free_space = sizeof(g_uart.tx_buffer) - g_uart.tx_count;
    slipped_length = slip_get_slipped_length(data, length);

    if (slipped_length > free_space)
    {
        return XST_FAILURE;
    }

    uart_send_byte(SLIP_END);
    for (i = 0; i < length; i++)
    {
        switch (data[i])
        {
        case SLIP_END:
            uart_send_byte(SLIP_ESC);
            uart_send_byte(SLIP_ESC_END);
            break;
        case SLIP_ESC:
            uart_send_byte(SLIP_ESC);
            uart_send_byte(SLIP_ESC_ESC);
            break;
        default:
            uart_send_byte(data[i]);
            break;
        }
    }
    uart_send_byte(SLIP_END);

    Xil_ExceptionDisable();
    g_uart.tx_count += slipped_length;

    if (g_uart.tx_count == slipped_length)
    {
        uart_fill_tx_fifo();
    }

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

static void uart_send_byte(uint8_t byte)
{
    g_uart.tx_buffer[g_uart.tx_end++] = byte;
    if (g_uart.tx_end >= sizeof(g_uart.tx_buffer))
    {
        g_uart.tx_end = 0;
    }
}

static void uart_fill_tx_fifo(void)
{
    uint32_t base_addr = g_uart.device.RegBaseAddress;

    while ((g_uart.tx_count > 0) && !XUartLite_IsTransmitFull(base_addr))
    {
        XUartLite_SendByte(base_addr, g_uart.tx_buffer[g_uart.tx_start++]);
        if (g_uart.tx_start >= sizeof(g_uart.tx_buffer))
        {
            g_uart.tx_start = 0;
        }
        g_uart.tx_count--;
    }
}

static void uart_receive(void)
{
    uint32_t base_addr = g_uart.device.RegBaseAddress;
    uint8_t byte;

    while (!XUartLite_IsReceiveEmpty(base_addr))
    {
        byte = XUartLite_RecvByte(base_addr);
        switch (g_uart.rx_state)
        {
        case RX_STATE_IDLE:
            if (byte == SLIP_END)
            {
                g_uart.rx_state = RX_STATE_ACTIVE;
                g_uart.rx_count = 0;
            }
            break;

        case RX_STATE_ACTIVE:
            if (byte == SLIP_END)
            {
                if (g_uart.rx_count != 0)
                {
                    g_uart.rx_callback(g_uart.rx_buffer, g_uart.rx_count);
                    g_uart.rx_state = RX_STATE_IDLE;
                }
                continue;
            }

            if (byte == SLIP_ESC)
            {
                g_uart.rx_state = RX_STATE_ESCAPED;
                continue;
            }

            if (g_uart.rx_count >= sizeof(g_uart.rx_buffer))
            {
                g_uart.rx_state = RX_STATE_IDLE;
                continue;
            }

            g_uart.rx_buffer[g_uart.rx_count++] = byte;
            break;

        case RX_STATE_ESCAPED:
            if ((byte != SLIP_ESC_END) && (byte != SLIP_ESC_ESC))
            {
                g_uart.rx_state = RX_STATE_IDLE;
                continue;
            }

            if (g_uart.rx_count >= sizeof(g_uart.rx_buffer))
            {
                g_uart.rx_state = RX_STATE_IDLE;
                continue;
            }

            g_uart.rx_buffer[g_uart.rx_count++] = (byte == SLIP_ESC_END) ? SLIP_END : SLIP_ESC;
            g_uart.rx_state = RX_STATE_ACTIVE;
            break;

        default:
            g_uart.rx_state = RX_STATE_IDLE;
            break;
        }
    }
}

static void uart_isr(void *arg)
{
    uint32_t status_reg;

    status_reg = XUartLite_ReadReg(g_uart.device.RegBaseAddress, XUL_STATUS_REG_OFFSET);

    if (status_reg & (XUL_SR_RX_FIFO_FULL | XUL_SR_RX_FIFO_VALID_DATA))
    {
        uart_receive();
    }

    if ((status_reg & XUL_SR_TX_FIFO_EMPTY) && (g_uart.tx_count > 0))
    {
        uart_fill_tx_fifo();
    }
}
