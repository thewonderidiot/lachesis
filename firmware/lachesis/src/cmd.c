#include "uart.h"
#include "msg.h"
#include "crc.h"
#include "rope.h"
#include "cmd.h"

static uint8_t g_cmd_buf[128];

void cmd_init(void)
{
}

void cmd_service(void)
{
    int32_t length;
    uint16_t msgid;
    uint8_t crc;

    length = uart_receive(g_cmd_buf, sizeof(g_cmd_buf));
    if (length <= 0)
    {
        return;
    }

    crc = crc8(0x00, g_cmd_buf, length - 1);
    if (crc != g_cmd_buf[length - 1])
    {
        return;
    }

    msgid = *((uint16_t*)g_cmd_buf);
    switch (msgid)
    {
    case MSGID_TIMING:
        rope_set_timing((timing_t*)g_cmd_buf);
        break;
    default:
        break;
    }
}
