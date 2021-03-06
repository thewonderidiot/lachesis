#include <string.h>
#include "xparameters.h"
#include "uart.h"
#include "msg.h"
#include "sys.h"
#include "rope_driver.h"
#include "rope_defs.h"
#include "rope.h"

static void rope_report_timing(void);
static void rope_report_status(void);

static rope_driver_t g_rope_driver;
static rope_t g_rope;

int32_t rope_init(void)
{
    memset(&g_rope, 0, sizeof(g_rope));
    g_rope.strand_msg.msgid = MSGID_STRAND;
    rope_driver_initialize(&g_rope_driver, XPAR_ROPE_DRIVER_0_S00_AXI_BASEADDR);
    return XST_SUCCESS;
}

void rope_service(void)
{
    static uint64_t last_us = 0;

    if (sys_time_elapsed(last_us, 500000))
    {
        last_us = sys_get_time();
        rope_report_timing();
        rope_report_status();
    }

    if (g_rope.state == ROPE_STATE_ACTIVE)
    {
        g_rope.strand_msg.words[g_rope.offset] = rope_read_word(g_rope.strand_msg.strand*WORDS_PER_STRAND + g_rope.offset);
        g_rope.offset++;
        if (g_rope.offset >= WORDS_PER_STRAND)
        {
            g_rope.state = ROPE_STATE_IDLE;
            uart_send(&g_rope.strand_msg, sizeof(g_rope.strand_msg));
        }
    }
}

uint16_t rope_read_word(uint16_t address)
{
    rope_driver_set_address(&g_rope_driver, address);
    rope_driver_start_cycle(&g_rope_driver, ROPE_DRIVER_ENABLE_ALL);
    while (rope_driver_busy(&g_rope_driver));
    return rope_driver_get_sensed_word(&g_rope_driver);
}

void rope_read_strand(uint8_t strand)
{
    g_rope.strand_msg.strand = strand;
    g_rope.offset = 0;
    g_rope.state = ROPE_STATE_ACTIVE;
}

void rope_jam_address(uint16_t address)
{
    rope_driver_set_address(&g_rope_driver, address);
    rope_driver_start_cycle(&g_rope_driver, ROPE_DRIVER_ENABLE_SBF);
    while (rope_driver_busy(&g_rope_driver));
}

void rope_set_bplssw_state(bool on)
{
    rope_driver_set_bplssw_state(&g_rope_driver, on);
}

void rope_set_sbf_state(bool on)
{
    rope_driver_set_sbf_state(&g_rope_driver, on);
}

void rope_pulse_set(uint8_t circuit)
{
    rope_driver_start_cycle(&g_rope_driver, ROPE_DRIVER_ENABLE_SET);
    while (rope_driver_busy(&g_rope_driver));
}

void rope_pulse_reset(uint8_t circuit)
{
    rope_driver_start_cycle(&g_rope_driver, ROPE_DRIVER_ENABLE_RESET2);
    while (rope_driver_busy(&g_rope_driver));
}

void rope_pulse_inhibit(uint8_t circuit)
{
    uint16_t address = (circuit < 010) ? 01 : 00;
    rope_driver_set_address(&g_rope_driver, address);
    rope_driver_start_cycle(&g_rope_driver, ROPE_DRIVER_ENABLE_IHENV);
    while (rope_driver_busy(&g_rope_driver));
}

void rope_pulse_strand(uint8_t circuit)
{
    uint16_t address = (circuit & 01) ? 02 : 00;
    rope_driver_set_address(&g_rope_driver, address);
    rope_driver_start_cycle(&g_rope_driver, ROPE_DRIVER_ENABLE_STRGAT);
    while (rope_driver_busy(&g_rope_driver));
}

void rope_set_timing(timing_msg_t *timing)
{
    rope_driver_timings_t driver_timings;

    driver_timings.ihenv_offset = timing->ihenv_offset;
    driver_timings.ihenv_width = timing->ihenv_width;
    driver_timings.reset1_offset = timing->reset1_offset;
    driver_timings.reset1_width = timing->reset1_width;
    driver_timings.set_offset = timing->set_offset;
    driver_timings.set_width = timing->set_width;
    driver_timings.strgat_offset = timing->strgat_offset;
    driver_timings.strgat_width = timing->strgat_width;
    driver_timings.reset2_offset = timing->reset2_offset;
    driver_timings.reset2_width = timing->reset2_width;
    driver_timings.sbf_offset = timing->sbf_offset;
    driver_timings.sbf_width = timing->sbf_width;
    driver_timings.bplssw_poweron_timeout = timing->bplssw_poweron_timeout;
    driver_timings.bplssw_pg_loss_timeout = timing->bplssw_pg_loss_timeout;

    rope_driver_set_timings(&g_rope_driver, &driver_timings);
}

static void rope_report_timing(void)
{
    timing_msg_t timing;
    rope_driver_timings_t driver_timings;

    rope_driver_get_timings(&g_rope_driver, &driver_timings);

    timing.msgid = MSGID_TIMING;
    timing.ihenv_offset = driver_timings.ihenv_offset;
    timing.ihenv_width = driver_timings.ihenv_width;
    timing.reset1_offset = driver_timings.reset1_offset;
    timing.reset1_width = driver_timings.reset1_width;
    timing.set_offset = driver_timings.set_offset;
    timing.set_width = driver_timings.set_width;
    timing.strgat_offset = driver_timings.strgat_offset;
    timing.strgat_width = driver_timings.strgat_width;
    timing.reset2_offset = driver_timings.reset2_offset;
    timing.reset2_width = driver_timings.reset2_width;
    timing.sbf_offset = driver_timings.sbf_offset;
    timing.sbf_width = driver_timings.sbf_width;
    timing.bplssw_poweron_timeout = driver_timings.bplssw_poweron_timeout;
    timing.bplssw_pg_loss_timeout = driver_timings.bplssw_pg_loss_timeout;

    uart_send(&timing, sizeof(timing));
}

static void rope_report_status(void)
{
    rope_status_msg_t status;
    
    status.msgid = MSGID_ROPE_STATUS;
    status.bplssw_state = rope_driver_get_bplssw_state(&g_rope_driver);
    status.sbf_state = rope_driver_get_sbf_state(&g_rope_driver);
    status.last_address = rope_driver_get_last_address(&g_rope_driver);
    status.sensed_word = rope_driver_get_sensed_word(&g_rope_driver);

    uart_send(&status, sizeof(status));
}
