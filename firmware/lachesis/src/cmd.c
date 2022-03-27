#include "crc.h"
#include "queue.h"
#include "uart.h"
#include "cmd.h"

static uint32_t g_cmd_buf[16];
static queue_t g_cmd_queue;

static int32_t cmd_decode(cmd_t *cmd, uint32_t raw_cmd);

void cmd_init(void)
{
    queue_init(&g_cmd_queue, g_cmd_buf, 16);
}

void cmd_service(void)
{
    int32_t status;
    uint32_t raw_cmd;
    cmd_t cmd;

    status = queue_get(&g_cmd_queue, &raw_cmd);
    if (status != XST_SUCCESS)
    {
        return;
    }

    status = cmd_decode(&cmd, raw_cmd);
    if (status != XST_SUCCESS)
    {
        return;
    }

    // PROCESS
}

void cmd_callback(uint8_t *data, uint32_t length)
{
    if (length != sizeof(uint32_t))
    {
        return;
    }

    queue_put(&g_cmd_queue, *((uint32_t *)data));
}

static int32_t cmd_decode(cmd_t *cmd, uint32_t raw_cmd)
{
    uint8_t *raw_bytes;
    uint8_t crc;

    raw_bytes = (uint8_t *)&raw_cmd;
    crc = crc8(0x00, raw_bytes, 3);

    if (raw_bytes[3] != crc)
    {
        return XST_FAILURE;
    }

    cmd->op = raw_bytes[0];
    cmd->arg = (raw_bytes[1] << 8) | raw_bytes[2];

    return XST_SUCCESS;
}

