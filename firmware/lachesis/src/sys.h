#ifndef _SYS_H_
#define _SYS_H_

#include <stdbool.h>
#include "xil_types.h"

int32_t sys_init(void);
void sys_service(void);
uint64_t sys_get_time(void);
bool sys_time_elapsed(uint64_t start, uint64_t delta);
void sys_delay(uint64_t delta);

#endif//_SYS_H_
