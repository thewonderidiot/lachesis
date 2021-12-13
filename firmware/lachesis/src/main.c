#include "xparameters.h"
#include "xil_types.h"
#include "uart.h"
#include "intr.h"

uint8_t rx_buf[512];
uint8_t tx_buf[512];

static uart_t uart;

static void uart_callback(uint8_t *data, uint32_t length);

int main(void)
{
    int32_t status;

    status = intr_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    status = uart_init(&uart, XPAR_AXI_UARTLITE_0_DEVICE_ID, XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR,
                       uart_callback, rx_buf, sizeof(rx_buf), tx_buf, sizeof(tx_buf));
    if (status != XST_SUCCESS)
    {
        return status;
    }

    Xil_ExceptionEnable();

    uint32_t x = 0;
    while (1)
    {
        x++;
        if (x >= 5000000)
        {
            x = 0;
        }
        if (x < 5)
        {
            uart_send(&uart, (uint8_t*)"this is a really long message to test interrupts\r\n", 50);
        }
    }
}

static void uart_callback(uint8_t *data, uint32_t length)
{
    (void)data;
    (void)length;
}
