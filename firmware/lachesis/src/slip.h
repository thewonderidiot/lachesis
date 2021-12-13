#ifndef _SLIP_H_
#define _SLIP_H_

#include "xil_types.h"

typedef enum {
    SLIP_END     = 0xC0,
    SLIP_ESC     = 0xDB,
    SLIP_ESC_END = 0xDC,
    SLIP_ESC_ESC = 0xDD,
} slip_t;

uint32_t slip_get_slipped_length(uint8_t *data, uint32_t length);

#endif//_SLIP_H_
