
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 7.5
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER stdin = axi_uartlite_0
 PARAMETER stdout = axi_uartlite_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.13
 PARAMETER HW_INSTANCE = microblaze_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = wdttb
 PARAMETER DRIVER_VER = 5.2
 PARAMETER HW_INSTANCE = axi_timebase_wdt_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.6
 PARAMETER HW_INSTANCE = axi_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.13
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sysmon
 PARAMETER DRIVER_VER = 7.7
 PARAMETER HW_INSTANCE = xadc_wiz_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 4.8
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = rope_driver
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = rope_driver_0
END


