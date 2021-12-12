#include "xparameters.h"
#include "xil_printf.h"
#include "xil_types.h"

int main() {
	xil_printf("hello!\r\n");
	uint32_t timer = 0;

	while (1) {
		timer++;
		if (timer >= 5000000) {
			timer = 0;
			xil_printf("hello again\r\n");
		}
	}
}
