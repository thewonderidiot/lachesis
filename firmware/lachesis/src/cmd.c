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
    case MSGID_READ_ADDRESS:
        rope_read_word(((read_address_msg_t*)g_cmd_buf)->address);
        break;
    case MSGID_JAM_ADDRESS:
        rope_jam_address(((read_address_msg_t*)g_cmd_buf)->address);
        break;
    case MSGID_PULSE_SET:
        rope_pulse_set(((pulse_msg_t*)g_cmd_buf)->circuit);
        break;
    case MSGID_PULSE_RESET:
        rope_pulse_reset(((pulse_msg_t*)g_cmd_buf)->circuit);
        break;
    case MSGID_PULSE_INHIBIT:
        rope_pulse_inhibit(((pulse_msg_t*)g_cmd_buf)->circuit);
        break;
    case MSGID_PULSE_STRAND:
        rope_pulse_strand(((pulse_msg_t*)g_cmd_buf)->circuit);
        break;
    case MSGID_READ_STRAND:
        rope_read_strand(((read_strand_msg_t*)g_cmd_buf)->strand);
        break;
    case MSGID_READ_ADDRESS_BLK1:
        rope_read_word_blk1(((read_address_msg_t*)g_cmd_buf)->address);
        break;
    case MSGID_READ_STRAND_BLK1:
        rope_read_strand_blk1(((read_strand_msg_t*)g_cmd_buf)->strand);
        break;
    default:
        break;
    }
}
