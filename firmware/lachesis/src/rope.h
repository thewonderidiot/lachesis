#ifndef _ROPE_H_
#define _ROPE_H_

#include <stdbool.h>
#include "xil_types.h"
#include "msg.h"

int32_t rope_init(void);
void rope_service(void);
void rope_set_timing(timing_msg_t *timing);
void rope_set_bplssw_state(bool on);
void rope_set_sbf_state(bool on);
uint16_t rope_read_word(uint16_t address);

#endif//_ROPE_H_
