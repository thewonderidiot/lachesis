#ifndef _WDT_H_
#define _WDT_H_

#include "xil_types.h"

int32_t wdt_init(void);
void wdt_service(void);

#endif//_WDT_H_
