#!/usr/bin/env python

import ctypes
import numpy as np
import matplotlib.pyplot as plt
from picosdk.ps2000 import ps2000 as ps
from picosdk.functions import mV2adc, adc2mV

handle = ps.ps2000_open_unit()
chandle = ctypes.c_int16(handle)

max_adc = ctypes.c_int16(32767)

ch1_vrange = ps.PS2000_VOLTAGE_RANGE['PS2000_50MV']
status = ps.ps2000_set_channel(chandle,
                      ps.PICO_CHANNEL['A'],
                      1, # enabled
                      ps.PICO_COUPLING['DC'],
                      ch1_vrange
)
print(status)

ch2_vrange = ps.PS2000_VOLTAGE_RANGE['PS2000_500MV']
status = ps.ps2000_set_channel(chandle,
                      ps.PICO_CHANNEL['B'],
                      1, # enabled
                      ps.PICO_COUPLING['DC'],
                      ch2_vrange
)
print(status)

status = ps.ps2000_set_trigger(chandle,
                      ps.PICO_CHANNEL['B'],
                      mV2adc(200, ch2_vrange, max_adc),
                      0, # rising
                      -50, # delay
                      0
)
print(status)

timebase = 1
num_samples = 1000
interval = ctypes.c_int32()
units = ctypes.c_int32()
oversample = ctypes.c_int16(1)
max_samples = ctypes.c_int32()

ps.ps2000_get_timebase(chandle,
                       timebase, 
                       num_samples,
                       ctypes.byref(interval),
                       ctypes.byref(units),
                       oversample,
                       ctypes.byref(max_samples)
)

fig = None
for i in range(10):
    dt = ctypes.c_int32()
    status = ps.ps2000_run_block(chandle, num_samples, timebase, oversample, ctypes.byref(dt))
    print(status)

    while not ps.ps2000_ready(chandle):
        pass

    buffer1 = (ctypes.c_int16 * num_samples)()
    buffer2 = (ctypes.c_int16 * num_samples)()

    ps.ps2000_get_values(chandle,
                        ctypes.byref(buffer1),
                        ctypes.byref(buffer2),
                        None,
                        None,
                        ctypes.byref(oversample),
                        ctypes.c_int32(num_samples)
    )

    adc1 = adc2mV(buffer1, ch1_vrange, max_adc)
    adc2 = adc2mV(buffer2, ch2_vrange, max_adc)

    time = np.linspace(0, (num_samples-1) * interval.value, num_samples)

    if fig is None:
        plt.ion()
        fig = plt.figure()
        ax = fig.add_subplot(111)
        line1, = ax.plot(time, adc1)
    else:
        line1.set_ydata(adc1)

    fig.canvas.draw()
    fig.canvas.flush_events()
