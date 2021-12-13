#include "queue.h"

void queue_init(queue_t *queue, uint32_t *buffer, uint32_t depth)
{
    queue->buffer = buffer;
    queue->depth = depth;
    queue->start = 0;
    queue->end = 0;
    queue->count = 0;
}

int32_t queue_put(queue_t *queue, uint32_t data)
{
    if (queue->count >= queue->depth)
    {
        return XST_FIFO_NO_ROOM;
    }

    queue->buffer[queue->end++] = data;
    if (queue->end >= queue->depth)
    {
        queue->end = 0;
    }

    queue->count++;

    return XST_SUCCESS;
}

int32_t queue_get(queue_t *queue, uint32_t *data)
{
    if (queue->count == 0)
    {
        return XST_NO_DATA;
    }

    *data = queue->buffer[queue->start++];
    if (queue->start >= queue->depth)
    {
        queue->start = 0;
    }

    queue->count--;

    return XST_SUCCESS;
}
