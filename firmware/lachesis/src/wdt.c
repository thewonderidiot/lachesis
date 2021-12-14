#include "xparameters.h"
#include "xwdttb.h"
#include "wdt.h"

static XWdtTb g_wdt;

int32_t wdt_init(void)
{
    int32_t status;

    status = XWdtTb_Initialize(&g_wdt, XPAR_AXI_TIMEBASE_WDT_0_DEVICE_ID);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    XWdtTb_Start(&g_wdt);

    return XST_SUCCESS;
}

void wdt_service(void)
{
    XWdtTb_RestartWdt(&g_wdt);
}
