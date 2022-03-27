#ifndef _TLM_H_
#define _TLM_H_

#include "xil_types.h"

typedef enum
{
    TLM_ID_SYS = 0,
} tlm_id_t;

typedef struct
{
    uint8_t id;
    uint8_t pad;
    uint16_t temp;
    uint16_t vccint;
    uint16_t vccaux;
    uint16_t v14p0;
    uint16_t v5p0;
} sys_tlm_t;

#endif//_TLM_H_
