#ifndef _MSG_H_
#define _MSG_H_

#include "xil_types.h"

typedef enum
{
    MSGID_DEBUG,
    MSGID_SYS_STATUS,
    MSGID_TIMING,
} msgid_t;

typedef struct
{
    uint16_t msgid;
    char str[12];
} debug_t;

typedef struct
{
    uint16_t msgid;
    uint16_t temp;
    uint16_t vccint;
    uint16_t vccaux;
    uint16_t v14p0;
    uint16_t v5p0;
} sys_status_t;

typedef struct
{
    uint16_t msgid;
    uint16_t bplssw_pg_loss_timeout;
    uint32_t bplssw_poweron_timeout;
    uint16_t ihenv_offset;
    uint16_t ihenv_width;
    uint16_t reset1_offset;
    uint16_t reset1_width;
    uint16_t set_offset;
    uint16_t set_width;
    uint16_t strgat_offset;
    uint16_t strgat_width;
    uint16_t reset2_offset;
    uint16_t reset2_width;
    uint16_t sbf_offset;
    uint16_t sbf_width;
} timing_t;

#endif//_MSG_H_
