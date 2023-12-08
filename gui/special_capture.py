#!/usr/bin/env python

import ctypes
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from picosdk.ps2000 import ps2000 as ps
from picosdk.functions import mV2adc, adc2mV
from PySide2.QtCore import QCoreApplication

max_adc = ctypes.c_int16(32767)
ch1_vrange = ps.PS2000_VOLTAGE_RANGE['PS2000_50MV']
ch2_vrange = ps.PS2000_VOLTAGE_RANGE['PS2000_500MV']
timebase = 1
max_samples = ctypes.c_int32()

class SpecialCapture:
    def __init__(self):
        self.handle = ps.ps2000_open_unit()
        self.chandle = ctypes.c_int16(self.handle)
        self.fig = None
        self.line1 = None

        self.interval = ctypes.c_int32()
        self.oversample = ctypes.c_int16(1)
        self.num_samples = 1000

        ps.ps2000_set_channel(self.chandle,
                            ps.PICO_CHANNEL['A'],
                            1, # enabled
                            ps.PICO_COUPLING['DC'],
                            ch1_vrange
        )

        ps.ps2000_set_channel(self.chandle,
                            ps.PICO_CHANNEL['B'],
                            1, # enabled
                            ps.PICO_COUPLING['DC'],
                            ch2_vrange
        )

        ps.ps2000_set_trigger(self.chandle,
                            ps.PICO_CHANNEL['B'],
                            mV2adc(200, ch2_vrange, max_adc),
                            0, # rising
                            -50, # delay
                            0
        )

        units = ctypes.c_int32()
        ps.ps2000_get_timebase(self.chandle,
                            timebase, 
                            self.num_samples,
                            ctypes.byref(self.interval),
                            ctypes.byref(units),
                            self.oversample,
                            ctypes.byref(max_samples)
        )

    def setup(self):
        dt = ctypes.c_int32()
        ps.ps2000_run_block(self.chandle, self.num_samples, timebase, self.oversample, ctypes.byref(dt))

    def capture(self, name):
        while not ps.ps2000_ready(self.chandle):
            QCoreApplication.processEvents()

        buffer1 = (ctypes.c_int16 * self.num_samples)()

        ps.ps2000_get_values(self.chandle,
                            ctypes.byref(buffer1),
                            None,
                            None,
                            None,
                            ctypes.byref(self.oversample),
                            ctypes.c_int32(self.num_samples)
        )

        adc1 = adc2mV(buffer1, ch1_vrange, max_adc)
        time = np.linspace(0, (self.num_samples-1) * self.interval.value, self.num_samples)

        if self.line1 is None:
            plt.ion()
            self.fig = plt.figure(figsize=(8,6), dpi=100)
            ax = self.fig.add_subplot(111)
            self.line1, = ax.plot(time, adc1)
        else:
            self.line1.set_ydata(adc1)

        self.fig.canvas.draw()
        self.fig.canvas.flush_events()

        df = pd.DataFrame({'time': time, 'volts': adc1})
        df.to_csv('%s.csv' % (name), index=False)
        plt.savefig('%s.png' % (name))
