#include "intr.h"
#include "uart.h"
#include "wdt.h"
#include "cmd.h"
#include "sys.h"
#include "rope.h"

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
        rope_service();
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

    status = uart_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    cmd_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    rope_init();
    if (status != XST_SUCCESS)
    {
        return status;
    }

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}
