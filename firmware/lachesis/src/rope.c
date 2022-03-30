#include <string.h>
#include "xparameters.h"
#include "uart.h"
#include "msg.h"
#include "sys.h"
#include "rope.h"

static timing_t g_timing = {0};

int32_t rope_init(void)
{
    g_timing.msgid = MSGID_TIMING;
    return XST_SUCCESS;
}

void rope_service(void)
{
    static uint64_t last_us = 0;

    if (sys_time_elapsed(last_us, 500000))
    {
        last_us = sys_get_time();
        uart_send(&g_timing, sizeof(g_timing));
    }
}

void rope_set_timing(timing_t *timing)
{
    memcpy(&g_timing, timing, sizeof(g_timing));
}
