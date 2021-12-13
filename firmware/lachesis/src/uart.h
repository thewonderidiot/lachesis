#ifndef _UART_H_
#define _UART_H_

#include "xil_types.h"
#include "xuartlite.h"

typedef void (*uart_callback_t)(uint8_t *data, uint32_t length);

typedef struct {
    XUartLite device;

    uint8_t *tx_buffer;
    uint32_t tx_buffer_size;
    uint32_t tx_start;
    uint32_t tx_end;
    uint32_t tx_length;

    uint8_t *rx_buffer;
    uint32_t rx_buffer_size;
    uint32_t rx_length;
    uart_callback_t rx_callback;
} uart_t;

int32_t uart_init(uart_t *uart, uint16_t device_id,
                  uint16_t int_id, uart_callback_t rx_callback,
                  uint8_t *rx_buffer, uint32_t rx_buffer_size,
                  uint8_t *tx_buffer, uint32_t tx_buffer_size);

int32_t uart_send(uart_t *uart, uint8_t *data, uint32_t length);


#endif//_UART_H_
