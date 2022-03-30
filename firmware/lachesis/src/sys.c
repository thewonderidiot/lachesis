#include "xparameters.h"
#include "xtmrctr.h"
#include "xsysmon.h"
#include "uart.h"
#include "msg.h"
#include "sys.h"

static XTmrCtr g_timer;
static XSysMon g_sysmon;
static uint64_t g_last_us = 0;

int32_t sys_init(void)
{
    int32_t status;
    XSysMon_Config *config;

    status = XTmrCtr_Initialize(&g_timer, XPAR_TMRCTR_0_DEVICE_ID);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    XTmrCtr_SetOptions(&g_timer, 0, XTC_AUTO_RELOAD_OPTION | XTC_CASCADE_MODE_OPTION);
    XTmrCtr_Reset(&g_timer, 0);
    XTmrCtr_Reset(&g_timer, 1);

    XTmrCtr_Start(&g_timer, 0);

    config = XSysMon_LookupConfig(XPAR_SYSMON_0_DEVICE_ID);
    if (config == NULL)
    {
        return XST_FAILURE;
    }

    XSysMon_CfgInitialize(&g_sysmon, config, config->BaseAddress);

    return XST_SUCCESS;
}

void sys_service(void)
{
    sys_status_t sys_status;

    if (sys_time_elapsed(g_last_us, 500000))
    {
        g_last_us = sys_get_time();

        sys_status.msgid = MSGID_SYS_STATUS;
        sys_status.temp = XSysMon_GetAdcData(&g_sysmon, XSM_CH_TEMP);
        sys_status.vccint = XSysMon_GetAdcData(&g_sysmon, XSM_CH_VCCINT);
        sys_status.vccaux = XSysMon_GetAdcData(&g_sysmon, XSM_CH_VCCAUX);
        sys_status.v14p0 = XSysMon_GetAdcData(&g_sysmon, XSM_CH_AUX_MIN + 4);
        sys_status.v5p0 = XSysMon_GetAdcData(&g_sysmon, XSM_CH_AUX_MIN + 12);
        uart_send(&sys_status, sizeof(sys_status));
    }
}

uint64_t sys_get_time(void)
{
    uint32_t top;
    uint32_t bot1;
    uint32_t bot2;

    bot1 = XTmrCtr_GetValue(&g_timer, 0);
    top = XTmrCtr_GetValue(&g_timer, 1);
    bot2 = XTmrCtr_GetValue(&g_timer, 0);
    if (bot2 < bot1)
    {
        top++;
    }

    return ((((uint64_t)top) << 32) | ((uint64_t)bot2)) / 100ULL;
}

bool sys_time_elapsed(uint64_t start, uint64_t delta)
{
    uint64_t current = sys_get_time();
    return ((start + delta) <= current);
}

void sys_delay(uint64_t delta)
{
    uint64_t end = sys_get_time() + delta;
    while (sys_get_time() < end)
    {
        // nop
    }
}
