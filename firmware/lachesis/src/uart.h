#ifndef _UART_H_
#define _UART_H_

#include "xil_types.h"
#include "xuartlite.h"
#include "slip.h"

#define RX_BUFFER_SIZE 256
#define TX_BUFFER_SIZE 2048

typedef struct {
    XUartLite device;

    uint8_t  tx_buffer[TX_BUFFER_SIZE];
    volatile uint16_t tx_start;
    uint16_t tx_end;
    volatile uint16_t tx_count;

    uint8_t  rx_buffer[RX_BUFFER_SIZE];
    uint16_t rx_start;
    volatile uint16_t rx_end;
} uart_t;

int32_t uart_init(void);
int32_t uart_send(void *msg, uint16_t length);
int32_t uart_receive(uint8_t *buf, uint16_t buf_size);

#endif//_UART_H_
