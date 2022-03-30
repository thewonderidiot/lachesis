#include <stdbool.h>
#include "xparameters.h"
#include "xuartlite_l.h"
#include "intr.h"
#include "uart.h"

static uart_t g_uart;

static void uart_send_byte(uint8_t byte);
static void uart_isr(void *uart_ptr);
static void uart_fill_tx_fifo(void);
static void uart_fill_rx_fifo(void);

int32_t uart_init(void)
{
    int32_t status;

    status = XUartLite_Initialize(&g_uart.device, XPAR_AXI_UARTLITE_0_DEVICE_ID);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    g_uart.rx_start = 0;
    g_uart.rx_end = 0;

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

int32_t uart_send(void *msg, uint16_t length)
{
    uint16_t free_space;
    uint16_t slipped_length;
    uint16_t i;
    uint8_t *data = (uint8_t*)msg;

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

int32_t uart_receive(uint8_t *buf, uint16_t buf_size)
{
    uint16_t buf_idx = 0;
    uint16_t new_start;
    uint8_t byte;
    bool escaped = false;

    // Nothing to do if there's no data
    if (g_uart.rx_start == g_uart.rx_end)
    {
        return 0;
    }

    // First, drop off any crap from the start
    while (g_uart.rx_buffer[g_uart.rx_start] != SLIP_END)
    {
        g_uart.rx_start = (g_uart.rx_start + 1) % sizeof(g_uart.rx_buffer);
        if (g_uart.rx_start == g_uart.rx_end)
        {
            return 0;
        }
    }

    // Now, seek forward to the first non-END character
    new_start = g_uart.rx_start;
    while (g_uart.rx_buffer[new_start] == SLIP_END)
    {
        new_start = (new_start + 1) % sizeof(g_uart.rx_buffer);
        if (new_start == g_uart.rx_end)
        {
            return 0;
        }
    }

    // Begin unslipping into the target buffer, until we either
    // run out of bytes, fail, or find the end.
    while (new_start != g_uart.rx_end)
    {
        byte = g_uart.rx_buffer[new_start];
        new_start = (new_start + 1) % sizeof(g_uart.rx_buffer);

        if (!escaped)
        {
            if (byte == SLIP_ESC)
            {
                escaped = true;
                continue;
            }
            else if (byte == SLIP_END)
            {
                g_uart.rx_start = new_start;
                return buf_idx;
            }
        }
        else
        {
            // Translate the escaped byte
            if (byte == SLIP_ESC_END)
            {
                byte = SLIP_END;
            }
            else if (byte == SLIP_ESC_ESC)
            {
                byte = SLIP_ESC;
            }
            else
            {
                // No good -- bomb out
                g_uart.rx_start = new_start;
                return 0;
            }
            escaped = false;
        }

        // Copy the byte over into the message buffer if there's room
        if (buf_idx >= buf_size)
        {
            // No room!
            g_uart.rx_start = new_start;
            return 0;
        }

        buf[buf_idx++] = byte;
    }
    
    // We ran out of time; don't update anything because it may become valid
    return 0;
}

static void uart_send_byte(uint8_t byte)
{
    g_uart.tx_buffer[g_uart.tx_end] = byte;
    g_uart.tx_end = (g_uart.tx_end + 1) % sizeof(g_uart.tx_buffer);
}

static void uart_fill_tx_fifo(void)
{
    uint32_t base_addr = g_uart.device.RegBaseAddress;

    while ((g_uart.tx_count > 0) && !XUartLite_IsTransmitFull(base_addr))
    {
        XUartLite_SendByte(base_addr, g_uart.tx_buffer[g_uart.tx_start]);
        g_uart.tx_start = (g_uart.tx_start + 1) % sizeof(g_uart.tx_buffer);
        g_uart.tx_count--;
    }
}

static void uart_fill_rx_fifo(void)
{
    uint32_t base_addr = g_uart.device.RegBaseAddress;
    uint8_t byte;
    uint16_t new_end;

    while (!XUartLite_IsReceiveEmpty(base_addr))
    {
        byte = XUartLite_RecvByte(base_addr);

        new_end = (g_uart.rx_end + 1) % sizeof(g_uart.rx_buffer);
        if (new_end == g_uart.rx_start)
        {
            // No room -- drop this byte on the floor
            continue;
        }

        g_uart.rx_buffer[g_uart.rx_end] = byte;
        g_uart.rx_end = new_end;
    }
}

static void uart_isr(void *arg)
{
    uint32_t status_reg;

    status_reg = XUartLite_ReadReg(g_uart.device.RegBaseAddress, XUL_STATUS_REG_OFFSET);

    if (status_reg & (XUL_SR_RX_FIFO_FULL | XUL_SR_RX_FIFO_VALID_DATA))
    {
        uart_fill_rx_fifo();
    }

    if ((status_reg & XUL_SR_TX_FIFO_EMPTY) && (g_uart.tx_count > 0))
    {
        uart_fill_tx_fifo();
    }
}
