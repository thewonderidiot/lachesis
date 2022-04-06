#ifndef _ROPE_H_
#define _ROPE_H_

#include <stdbool.h>
#include "xil_types.h"
#include "msg.h"

typedef enum
{
    ROPE_STATE_IDLE,
    ROPE_STATE_ACTIVE
} rope_state_t;

typedef struct
{
    rope_state_t state;
    strand_msg_t strand_msg;
    uint16_t offset;
} rope_t;

int32_t rope_init(void);
void rope_service(void);
void rope_set_timing(timing_msg_t *timing);
void rope_set_bplssw_state(bool on);
void rope_set_sbf_state(bool on);
uint16_t rope_read_word(uint16_t address);
void rope_read_strand(uint8_t strand);
void rope_jam_address(uint16_t address);
void rope_pulse_set(uint8_t circuit);
void rope_pulse_reset(uint8_t circuit);
void rope_pulse_inhibit(uint8_t circuit);
void rope_pulse_strand(uint8_t circuit);

#endif//_ROPE_H_
