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
        rope_set_timing((timing_msg_t*)g_cmd_buf);
        break;
    case MSGID_SET_BPLSSW_STATE:
        rope_set_bplssw_state(((set_state_msg_t*)g_cmd_buf)->on);
        break;
    case MSGID_SET_SBF_STATE:
        rope_set_sbf_state(((set_state_msg_t*)g_cmd_buf)->on);
        break;
    case MSGID_READ_SINGLE_WORD:
        rope_read_word(((read_single_word_msg_t*)g_cmd_buf)->address);
        break;
    default:
        break;
    }
}
