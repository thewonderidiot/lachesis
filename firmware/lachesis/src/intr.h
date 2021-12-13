#ifndef _INTR_H_
#define _INTR_H_

#include "xil_types.h"
#include "xintc.h"
#include "xintc.h"

int32_t intr_init(void);
int32_t intr_attach(uint16_t int_id, XInterruptHandler handler, void *arg);

#endif//_INTR_H_
