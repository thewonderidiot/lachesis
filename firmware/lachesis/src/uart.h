#ifndef _UART_H_
#define _UART_H_

#include "xil_types.h"
#include "xuartlite.h"
#include "slip.h"

#define RX_BUFFER_SIZE 4
#define TX_BUFFER_SIZE 1024

typedef void (*uart_callback_t)(uint8_t *data, uint32_t length);

typedef enum {
    RX_STATE_IDLE,
    RX_STATE_ACTIVE,
    RX_STATE_ESCAPED,
} rx_state_t;

typedef struct {
    XUartLite device;

    uint8_t  tx_buffer[TX_BUFFER_SIZE];
    uint32_t tx_start;
    uint32_t tx_end;
    uint32_t tx_count;

    uint8_t  rx_buffer[RX_BUFFER_SIZE];
    uint32_t rx_count;
    uart_callback_t rx_callback;
    rx_state_t rx_state;
} uart_t;

int32_t uart_init(uart_callback_t rx_callback);
int32_t uart_send(void *data, uint32_t length);

#endif//_UART_H_
