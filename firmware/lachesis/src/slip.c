#include "slip.h"

uint32_t slip_get_slipped_length(uint8_t *data, uint32_t length)
{
    uint32_t i;
    uint32_t slipped_length = length + 2;

    for (i = 0; i < length; i++)
    {
        if ((data[i] == SLIP_END) || (data[i] == SLIP_ESC))
        {
            slipped_length++;
        }
    }

    return slipped_length;
}
