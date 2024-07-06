from qtpy.QtWidgets import QWidget, QLabel, QSpinBox, QGridLayout, \
                           QHBoxLayout, QSpacerItem, QSizePolicy, QPushButton, \
                           QComboBox, QVBoxLayout, QGroupBox, QLineEdit
from qtpy.QtCharts import QChart, QChartView, QLineSeries
from qtpy.QtCore import QCoreApplication, QPointF, Qt
from qtpy.QtGui import QPainter

from time import time
import numpy as np
import ctypes
import os

from picosdk.ps2000 import ps2000 as ps
from picosdk.functions import mV2adc, adc2mV

import usb_msg

MAX_ADC = ctypes.c_int16(32767)
CH1_VRANGE = ps.PS2000_VOLTAGE_RANGE['PS2000_50MV']
CH2_VRANGE = ps.PS2000_VOLTAGE_RANGE['PS2000_500MV']
TIMEBASE = 1

BANKS = {
    'B1': [0o00, 0o01, 0o02, 0o03, 0o04, 0o05],
    'B2': [0o06, 0o07, 0o10, 0o11, 0o12, 0o13],
    'B3': [0o14, 0o15, 0o16, 0o17, 0o20, 0o21],
    'B4': [0o22, 0o23, 0o24, 0o25, 0o26, 0o27],
    'B5': [0o30, 0o31, 0o32, 0o33, 0o34, 0o35],
    'B6': [0o36, 0o37, 0o40, 0o41, 0o42, 0o43],
    'B28': [0o04, 0o01, 0o24, 0o21],
    'B29': [0o02, 0o03, 0o22, 0o23],
    'B21': [0o10, 0o05, 0o30, 0o25],
    'B22': [0o06, 0o07, 0o26, 0o27],
    'B23': [0o14, 0o11, 0o34, 0o31],
    'B24': [0o12, 0o13, 0o32, 0o33],
}

class ScopeWindow(QWidget):
    def __init__(self, usbif, block1, rope_db, timing_window):
        super().__init__()

        self._block1 = block1
        self._usbif = usbif
        self._rope_db = rope_db
        self._timing_window = timing_window

        self._setup_ui()
        self._setup_scope()

        self._running = False

    def _setup_ui(self):
        self.setWindowTitle('Scope Capture')

        layout = QHBoxLayout()
        self.setLayout(layout)

        column = QWidget(self)
        layout.addWidget(column)
        column_layout = QVBoxLayout()
        column_layout.setContentsMargins(0,0,0,0)
        column.setMaximumWidth(180)
        column.setLayout(column_layout)

        box = QGroupBox('Settings')
        column_layout.addWidget(box)
        box_layout = QGridLayout()
        box.setLayout(box_layout)

        label = QLabel('Rope')
        box_layout.addWidget(label, 0, 0)

        partnos = self._rope_db.get_partnos()
        self._partnos = QComboBox()
        box_layout.addWidget(self._partnos, 0, 1)
        self._partnos.addItems(partnos)

        label = QLabel('Strand')
        box_layout.addWidget(label, 1, 0)

        strands = [str(i) for i in range(1, 9 if self._block1 else 13)]
        self._strands = QComboBox()
        box_layout.addWidget(self._strands, 1, 1)
        self._strands.addItems(strands)

        label = QLabel('Bit')
        box_layout.addWidget(label, 2, 0)

        bits = [str(i) for i in range(1, 17)]
        self._bits = QComboBox()
        box_layout.addWidget(self._bits, 2, 1)
        self._bits.addItems(bits)

        label = QLabel('Samples')
        box_layout.addWidget(label, 3, 0)

        self._samples = QSpinBox()
        box_layout.addWidget(self._samples, 3, 1)
        self._samples.setRange(1, 1000)
        self._samples.setSingleStep(1)
        self._samples.setValue(100)

        box = QGroupBox('Status')
        column_layout.addWidget(box)
        box_layout = QGridLayout()
        box.setLayout(box_layout)

        label = QLabel('Address')
        box_layout.addWidget(label, 0, 0)

        self._address = QLineEdit(self)
        self._address.setText('-')
        self._address.setReadOnly(True)
        box_layout.addWidget(self._address, 0, 1)

        spacer = QSpacerItem(1, 1, QSizePolicy.Minimum, QSizePolicy.Expanding)
        column_layout.addSpacerItem(spacer)


        self._start_button = QPushButton('Capture')
        self._start_button.clicked.connect(self._start_stop)
        column_layout.addWidget(self._start_button)

        self._series = QLineSeries()

        self._chart = QChart()
        self._chart.legend().hide()
        self._chart.addSeries(self._series)
        self._chart.createDefaultAxes()
        self._chart.setTheme(QChart.ChartThemeDark)

        chart_view = QChartView(self._chart)
        chart_view.setRenderHint(QPainter.Antialiasing)
        chart_view.setMinimumWidth(1200)
        chart_view.setMinimumHeight(675)

        layout.addWidget(chart_view)

    def _setup_scope(self):
        self.handle = ps.ps2000_open_unit()
        self.chandle = ctypes.c_int16(self.handle)
        self.interval = ctypes.c_int32()
        self.oversample = ctypes.c_int16(1)
        self.num_samples = 1000

        ps.ps2000_set_channel(self.chandle,
                            ps.PICO_CHANNEL['A'],
                            1, # enabled
                            ps.PICO_COUPLING['DC'],
                            CH1_VRANGE
        )

        ps.ps2000_set_channel(self.chandle,
                            ps.PICO_CHANNEL['B'],
                            1, # enabled
                            ps.PICO_COUPLING['DC'],
                            CH2_VRANGE
        )

        ps.ps2000_set_trigger(self.chandle,
                            ps.PICO_CHANNEL['B'],
                            mV2adc(200, CH2_VRANGE, MAX_ADC),
                            0, # rising
                            -50, # delay
                            0
        )

        units = ctypes.c_int32()
        max_samples = ctypes.c_int32()
        ps.ps2000_get_timebase(self.chandle,
                            TIMEBASE, 
                            self.num_samples,
                            ctypes.byref(self.interval),
                            ctypes.byref(units),
                            self.oversample,
                            ctypes.byref(max_samples)
        )

    def setup(self):
        dt = ctypes.c_int32()
        ps.ps2000_run_block(self.chandle, self.num_samples, TIMEBASE, self.oversample, ctypes.byref(dt))

    def capture(self):
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

        return np.array(adc2mV(buffer1, CH1_VRANGE, MAX_ADC))

    def _reset_graph(self):
        self._series.replace([])
        ax = self._chart.axes(Qt.Vertical)[0]
        ax.setRange(-0.01, -0.01)

    def _update_graph(self, voltages):
        points = []
        for i, v in enumerate(voltages):
            points.append(QPointF(i*self.interval.value, v))

        self._series.replace(points)
        ax = self._chart.axes(Qt.Vertical)[0]
        if min(voltages) < ax.min():
            ax.setMin(min(voltages) - 0.1)
        if max(voltages) > ax.max():
            ax.setMax(max(voltages) + 0.1)
        ax = self._chart.axes(Qt.Horizontal)[0]
        ax.setRange(0, len(voltages)*self.interval.value)

    def _get_addr_str(self, module, addr):
        bank_idx = addr // 0o2000
        bank = BANKS[module][bank_idx]
        s = addr % 0o2000

        if self._block1:
            if bank == 1 or bank == 2:
                return '%04o' % (s + bank*0o2000)
            else:
                return '%02o,%04o' % (bank, s + 0o6000)
        else:
            if bank == 2 or bank == 3:
                return '%04o' % (s + bank*0o2000)
            else:
                return '%02o,%04o' % (bank, s+0o2000)


    def _start_stop(self):
        if self._running:
            self._stop()
        else:
            self._running = True
            self._start_button.setText('Stop')
            self._run_capture()

    def _stop(self):
        self._running = False
        self._start_button.setText('Capture')

    def _run_capture(self):
        partno = self._partnos.currentText()
        module = self._rope_db.get_module(partno)
        strand = int(self._strands.currentText())
        bit = int(self._bits.currentText())
        samples = self._samples.value()

        if self._block1:
            base = 0o400 * ((strand - 1) % 4)
            if strand > 4:
                base += 0o4000
            addrs = list(range(base, base+0o400)) + list(range(base+0o2000, base+0o2400))
            sbfs = ['set', 'rst']
        else:
            base = 0o1000 * (strand - 1)
            addrs = list(range(base, base+0o1000))
            sbfs = ['rst']

        partno_dir = 'captures/%s' % partno
        try:
            os.mkdir(partno_dir)
        except:
            pass
        
        self._reset_graph()

        self._timing_window.restore_defaults()
        self._timing_window.program()

        for sbf in sbfs:
            if self._block1 and sbf == 'rst':
                self._timing_window.set_offset('STRGAT', 5.4)
                self._timing_window.set_offset('SBF', 8.5)
                self._timing_window.program()

            for addr in addrs:
                voltages = None
                start = time()

                addr_str = self._get_addr_str(module, addr)
                self._address.setText(addr_str)

                for i in range(samples):
                    self.setup()
                    if self._block1:
                        self._usbif.send(usb_msg.ReadAddressBlk1(addr))
                    else:
                        self._usbif.send(usb_msg.ReadAddressBlk(addr))
                    v = self.capture()

                    if voltages is None:
                        voltages = v
                    else:
                        voltages = np.vstack((voltages, v))

                    if (i % 10 == 1):
                        self._update_graph(voltages.mean(axis=0))

                self._update_graph(voltages.mean(axis=0))

                fn = os.path.join(partno_dir, '%s_b%u_%s.npz' % (addr_str, bit, sbf))
                with open(fn, 'wb') as f:
                    np.savez_compressed(file=f, arr=voltages)

                if not self._running:
                    return

        self._stop()
