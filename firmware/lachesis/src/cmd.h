#ifndef _CMD_H_
#define _CMD_H_

#include "xil_types.h"
#include "xstatus.h"

typedef struct
{
    uint8_t op;
    uint16_t arg;
} cmd_t;

void cmd_init(void);
void cmd_service(void);
void cmd_callback(uint8_t *data, uint32_t length);

#endif//_CMD_H_
