#include "intr.h"
#include "uart.h"
#include "wdt.h"
#include "cmd.h"
#include "sys.h"

static int32_t system_init(void);

int main(void)
{
    int32_t status;

    status = system_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    while (1)
    {
        sys_service();
        wdt_service();
        cmd_service();
    }
}

static int32_t system_init(void)
{
    int32_t status;

    status = wdt_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    status = intr_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    status = sys_init();
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

    uart_send("Hello\r\n", 8);

    return XST_SUCCESS;
}
