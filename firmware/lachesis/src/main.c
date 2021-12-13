#include "intr.h"
#include "uart.h"
#include "cmd.h"

static int32_t system_init(void);

int main(void)
{
    int32_t status;

    status = system_init();

    while (1)
    {
        cmd_service();
    }
}

static int32_t system_init(void)
{
    int32_t status;

    status = intr_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    status = uart_init(cmd_callback);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    cmd_init();

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}
