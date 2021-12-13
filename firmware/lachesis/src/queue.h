#ifndef _QUEUE_H_
#define _QUEUE_H_

#include "xil_types.h"
#include "xstatus.h"

typedef struct
{
    uint32_t *buffer;
    uint32_t depth;
    uint32_t start;
    uint32_t end;
    uint32_t count;
} queue_t;

void queue_init(queue_t *queue, uint32_t *buffer, uint32_t depth);
int32_t queue_put(queue_t *queue, uint32_t data);
int32_t queue_get(queue_t *queue, uint32_t *data);

#endif//_QUEUE_H_
