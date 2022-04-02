#ifndef _MSG_H_
#define _MSG_H_

#include "xil_types.h"

typedef enum
{
    MSGID_DEBUG,
    MSGID_SYS_STATUS,
    MSGID_TIMING,
    MSGID_ROPE_STATUS,
    MSGID_SET_BPLSSW_STATE,
    MSGID_SET_SBF_STATE,
    MSGID_READ_SINGLE_WORD,
} msgid_t;

typedef struct
{
    uint16_t msgid;
    char str[12];
} debug_msg_t;

typedef struct
{
    uint16_t msgid;
    uint16_t temp;
    uint16_t vccint;
    uint16_t vccaux;
    uint16_t v14p0;
    uint16_t v5p0;
} sys_status_msg_t;

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
} timing_msg_t;

typedef struct
{
    uint16_t msgid;
    uint8_t bplssw_state;
    uint8_t sbf_state;
    uint16_t last_address;
    uint16_t sensed_word;
} rope_status_msg_t;

typedef struct
{
    uint16_t msgid;
    uint8_t on;
    uint8_t pad;
} set_state_msg_t;

typedef struct
{
    uint16_t msgid;
    uint16_t address;
} read_single_word_msg_t;

#endif//_MSG_H_
