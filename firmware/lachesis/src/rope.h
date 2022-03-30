#ifndef _ROPE_H_
#define _ROPE_H_

#include "xil_types.h"
#include "msg.h"

int32_t rope_init(void);
void rope_service(void);
void rope_set_timing(timing_t *timing);

#endif//_ROPE_H_
