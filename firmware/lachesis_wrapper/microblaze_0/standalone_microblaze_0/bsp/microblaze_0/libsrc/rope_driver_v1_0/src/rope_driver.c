

/***************************** Include Files *******************************/
#include "rope_driver.h"

/************************** Function Definitions ***************************/
XStatus rope_driver_initialize(rope_driver_t *rope, uint32_t base_address)
{
    rope->base_address = base_address;
    return XST_SUCCESS;
}

void rope_driver_start_cycle(rope_driver_t *rope, uint8_t enable_mask)
{
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_ENABLE_OFFSET, enable_mask);
}

uint8_t rope_driver_busy(rope_driver_t *rope)
{
    return ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_STATUS_OFFSET);
}

void rope_driver_set_address(rope_driver_t *rope, uint16_t address)
{
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_ADDRESS_OFFSET, address);
}

uint16_t rope_driver_get_last_address(rope_driver_t *rope)
{
    return ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_ADDRESS_OFFSET);
}

uint16_t rope_driver_get_sensed_word(rope_driver_t *rope)
{
    return ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_DATA_OFFSET);
}

void rope_driver_set_bplssw_state(rope_driver_t *rope, uint8_t state)
{
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_BPLSSW_EN_OFFSET, state);
}

uint8_t rope_driver_get_bplssw_state(rope_driver_t *rope)
{
    return ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_BPLSSW_EN_OFFSET);
}

void rope_driver_set_sbf_state(rope_driver_t *rope, uint8_t state)
{
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_SBF_EN_OFFSET, state);
}

uint8_t rope_driver_get_sbf_state(rope_driver_t *rope)
{
    return ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_SBF_EN_OFFSET);
}

void rope_driver_set_timings(rope_driver_t *rope, rope_driver_timings_t *timings)
{
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_IHENV_OFFSET_OFFSET, timings->ihenv_offset);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_IHENV_WIDTH_OFFSET, timings->ihenv_width);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_RESET1_OFFSET_OFFSET, timings->reset1_offset);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_RESET1_WIDTH_OFFSET, timings->reset1_width);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_SET_OFFSET_OFFSET, timings->set_offset);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_SET_WIDTH_OFFSET, timings->set_width);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_STRGAT_OFFSET_OFFSET, timings->strgat_offset);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_STRGAT_WIDTH_OFFSET, timings->strgat_width);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_RESET2_OFFSET_OFFSET, timings->reset2_offset);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_RESET2_WIDTH_OFFSET, timings->reset2_width);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_SBF_OFFSET_OFFSET, timings->sbf_offset);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_SBF_WIDTH_OFFSET, timings->sbf_width);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_BPLSSW_POWERON_OFFSET, timings->bplssw_poweron_timeout);
    ROPE_DRIVER_mWriteReg(rope->base_address, ROPE_DRIVER_BPLSSW_PG_LOSS_OFFSET, timings->bplssw_pg_loss_timeout);
}

void rope_driver_get_timings(rope_driver_t *rope, rope_driver_timings_t *timings)
{
    timings->ihenv_offset = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_IHENV_OFFSET_OFFSET);
    timings->ihenv_width = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_IHENV_WIDTH_OFFSET);
    timings->reset1_offset = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_RESET1_OFFSET_OFFSET);
    timings->reset1_width = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_RESET1_WIDTH_OFFSET);
    timings->set_offset = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_SET_OFFSET_OFFSET);
    timings->set_width = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_SET_WIDTH_OFFSET);
    timings->strgat_offset = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_STRGAT_OFFSET_OFFSET);
    timings->strgat_width = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_STRGAT_WIDTH_OFFSET);
    timings->reset2_offset = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_RESET2_OFFSET_OFFSET);
    timings->reset2_width = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_RESET2_WIDTH_OFFSET);
    timings->sbf_offset = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_SBF_OFFSET_OFFSET);
    timings->sbf_width = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_SBF_WIDTH_OFFSET);
    timings->bplssw_poweron_timeout = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_BPLSSW_POWERON_OFFSET);
    timings->bplssw_pg_loss_timeout = ROPE_DRIVER_mReadReg(rope->base_address, ROPE_DRIVER_BPLSSW_PG_LOSS_OFFSET);
}
