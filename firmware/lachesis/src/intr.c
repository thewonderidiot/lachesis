#include "xil_exception.h"
#include "intr.h"

static XIntc g_intc;

int32_t intr_init(void)
{
    int32_t status;

    status = XIntc_Initialize(&g_intc, XPAR_INTC_0_DEVICE_ID);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    status = XIntc_Start(&g_intc, XIN_REAL_MODE);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &g_intc);

    return XST_SUCCESS;
}

int32_t intr_attach(uint16_t int_id, XInterruptHandler handler, void *arg)
{
    int32_t status;

    status = XIntc_Connect(&g_intc, int_id, handler, arg);
    if (status != XST_SUCCESS)
    {
        return status;
    }

    XIntc_Enable(&g_intc, int_id);

    return XST_SUCCESS;
}
