
#ifndef ROPE_DRIVER_H
#define ROPE_DRIVER_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define ROPE_DRIVER_ENABLE_OFFSET          0
#define ROPE_DRIVER_STATUS_OFFSET          0
#define ROPE_DRIVER_ADDRESS_OFFSET         4
#define ROPE_DRIVER_DATA_OFFSET            8
#define ROPE_DRIVER_BPLSSW_EN_OFFSET      12
#define ROPE_DRIVER_SBF_EN_OFFSET         16
#define ROPE_DRIVER_IHENV_OFFSET_OFFSET   20
#define ROPE_DRIVER_IHENV_WIDTH_OFFSET    24
#define ROPE_DRIVER_RESET1_OFFSET_OFFSET  28
#define ROPE_DRIVER_RESET1_WIDTH_OFFSET   32
#define ROPE_DRIVER_SET_OFFSET_OFFSET     36
#define ROPE_DRIVER_SET_WIDTH_OFFSET      40
#define ROPE_DRIVER_STRGAT_OFFSET_OFFSET  44
#define ROPE_DRIVER_STRGAT_WIDTH_OFFSET   48
#define ROPE_DRIVER_RESET2_OFFSET_OFFSET  52
#define ROPE_DRIVER_RESET2_WIDTH_OFFSET   56
#define ROPE_DRIVER_SBF_OFFSET_OFFSET     60
#define ROPE_DRIVER_SBF_WIDTH_OFFSET      64
#define ROPE_DRIVER_BPLSSW_POWERON_OFFSET 68
#define ROPE_DRIVER_BPLSSW_PG_LOSS_OFFSET 72


/**************************** Type Definitions *****************************/

typedef struct
{
    uint32_t base_address;
} rope_driver_t;

typedef struct
{
    uint16_t ihenv_offset;
    uint16_t ihenv_width;
    uint16_t reset1_offset;
    uint16_t reset1_width;
    uint16_t set_offset;
    uint16_t set_width;
    uint16_t strgat_offset;
    uint16_t strgat_width;
    uint16_t reset2_offset;
    uint16_t reset2_width;
    uint16_t sbf_offset;
    uint16_t sbf_width;
    uint32_t bplssw_poweron_timeout;
    uint16_t bplssw_pg_loss_timeout;
} rope_driver_timings_t;

typedef enum
{
    ROPE_DRIVER_ENABLE_IHENV  = 0x01,
    ROPE_DRIVER_ENABLE_RESET1 = 0x02,
    ROPE_DRIVER_ENABLE_SET    = 0x04,
    ROPE_DRIVER_ENABLE_STRGAT = 0x08,
    ROPE_DRIVER_ENABLE_RESET2 = 0x10,
    ROPE_DRIVER_ENABLE_SBF    = 0x20,
    ROPE_DRIVER_ENABLE_ALL    = 0x3F,
} rope_driver_enable_mask_t;

/**
 *
 * Write a value to a ROPE_DRIVER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the ROPE_DRIVERdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void ROPE_DRIVER_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define ROPE_DRIVER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a ROPE_DRIVER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the ROPE_DRIVER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 ROPE_DRIVER_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define ROPE_DRIVER_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the ROPE_DRIVER instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus ROPE_DRIVER_Reg_SelfTest(void * baseaddr_p);

XStatus rope_driver_initialize(rope_driver_t *rope, uint32_t base_address);
void rope_driver_start_cycle(rope_driver_t *rope, uint8_t enable_mask);
uint8_t rope_driver_busy(rope_driver_t *rope);
void rope_driver_set_address(rope_driver_t *rope, uint16_t address);
uint16_t rope_driver_get_last_address(rope_driver_t *rope);
uint16_t rope_driver_get_sensed_word(rope_driver_t *rope);
void rope_driver_set_bplssw_state(rope_driver_t *rope, uint8_t state);
uint8_t rope_driver_get_bplssw_state(rope_driver_t *rope);
void rope_driver_set_sbf_state(rope_driver_t *rope, uint8_t state);
uint8_t rope_driver_get_sbf_state(rope_driver_t *rope);
void rope_driver_set_timings(rope_driver_t *rope, rope_driver_timings_t *timings);
void rope_driver_get_timings(rope_driver_t *rope, rope_driver_timings_t *timings);

#endif // ROPE_DRIVER_H
