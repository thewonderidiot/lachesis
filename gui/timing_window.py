from qtpy.QtWidgets import QWidget, QLabel, QDoubleSpinBox, QGridLayout, \
                              QHBoxLayout, QSpacerItem, QSizePolicy, QPushButton
from qtpy.QtCore import QSettings
from waveform import Waveform
import usb_msg

class TimingWindow(QWidget):
    def __init__(self, usbif, block1):
        super().__init__()

        self._usbif = usbif
        if block1:
            settings_file = 'timing_block1.ini'
        else:
            settings_file = 'timing_block2.ini'
        self._settings = QSettings(settings_file, QSettings.IniFormat)

        self._signals = [
            'IHENV',
            'RESET1',
            'SET',
            'STRGAT',
            'RESET2',
            'SBF',
        ]

        self._setup_ui()

        usbif.msg_received.connect(self._update)
        usbif.connected.connect(self._connected)

    def _setup_ui(self):
        self.setWindowTitle('Rope Cycle Timing')

        layout = QGridLayout()
        layout.setSpacing(0)
        self.setLayout(layout)

        label = QLabel('Signal')
        layout.addWidget(label, 0, 0)
        spacer = QSpacerItem(8, 1, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 0, 1)
        label = QLabel('Offset')
        layout.addWidget(label, 0, 2)
        spacer = QSpacerItem(8, 1, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 0, 3)
        label = QLabel('Width')
        layout.addWidget(label, 0, 4)
        spacer = QSpacerItem(8, 1, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 0, 5)

        self._offset_spins = {}
        self._width_spins = {}
        self._waveforms = {}

        for i,signal in enumerate(self._signals):
            label = QLabel(signal)
            layout.addWidget(label, i+1, 0)

            spin1 = QDoubleSpinBox()
            spin1.setDecimals(2)
            spin1.setSuffix(' µs')
            spin1.setSingleStep(0.01)
            spin1.setMinimum(0.1)
            spin1.setMaximum(11.5)
            layout.addWidget(spin1, i+1, 2)
            self._offset_spins[signal] = spin1

            spin2 = QDoubleSpinBox()
            spin2.setDecimals(2)
            spin2.setSuffix(' µs')
            spin2.setSingleStep(0.01)
            spin2.setMinimum(0.1)
            spin2.setMaximum(11.7)
            layout.addWidget(spin2, i+1, 4)
            self._width_spins[signal] = spin2

            waveform = Waveform(self)
            layout.addWidget(waveform, i+1, 6)
            spin1.valueChanged.connect(waveform.set_pulse_offset)
            spin2.valueChanged.connect(waveform.set_pulse_width)
            spin1.setValue(float(self._settings.value('Offsets/' + signal)))
            spin2.setValue(float(self._settings.value('Widths/' + signal)))
            self._waveforms[signal] = waveform

        label = QLabel('BPLSSW PG Timeout:')
        layout.addWidget(label, len(self._signals) + 1, 0, len(self._signals) + 1, 3)

        self._bplssw_spin = QDoubleSpinBox()
        self._bplssw_spin.setSuffix(' ms')
        self._bplssw_spin.setDecimals(1)
        self._bplssw_spin.setSingleStep(0.1)
        self._bplssw_spin.setMinimum(70.0)
        self._bplssw_spin.setMaximum(200.0)
        self._bplssw_spin.setValue(float(self._settings.value('Timeouts/BPLSSW')))
        layout.addWidget(self._bplssw_spin, len(self._signals) + 1, 4)

        button_row = QWidget(self)
        button_layout = QHBoxLayout(button_row)
        button_row.setLayout(button_layout)

        button = QPushButton('Defaults')
        button.clicked.connect(self.restore_defaults)
        button_layout.addWidget(button)

        button = QPushButton('Save')
        button.clicked.connect(self._save_defaults)
        button_layout.addWidget(button)

        button = QPushButton('Reset')
        button.clicked.connect(self._reset)
        button_layout.addWidget(button)

        button = QPushButton('Program')
        button.clicked.connect(self.program)
        button_layout.addWidget(button)

        layout.addWidget(button_row, len(self._signals) + 1, 6)

    def restore_defaults(self):
        for signal in self._signals:
            offset = float(self._settings.value('Offsets/' + signal))
            width = float(self._settings.value('Widths/' + signal))
            self._offset_spins[signal].setValue(offset)
            self._width_spins[signal].setValue(width)

        self._bplssw_spin.setValue(float(self._settings.value('Timeouts/BPLSSW')))

    def set_offset(self, signal, offset):
        self._offset_spins[signal].setValue(offset)

    def set_width(self, signal, width):
        self._width_spins[signal].setValue(width)

    def _save_defaults(self):
        for signal in self._signals:
            offset = self._offset_spins[signal].value()
            width = self._width_spins[signal].value()
            self._settings.setValue('Offsets/' + signal, str(offset))
            self._settings.setValue('Widths/' + signal, str(width))

        self._settings.setValue('Timeouts/BPLSSW', str(self._bplssw_spin.value()))
        self._settings.sync()

    def _reset(self):
        for signal in self._signals:
            self._offset_spins[signal].setValue(self._waveforms[signal].get_programmed_offset())
            self._width_spins[signal].setValue(self._waveforms[signal].get_programmed_width())

    def program(self):
        params = [
            2, # clock cycles for PG loss,
            self._bplssw_spin.value()
        ]
        for signal in self._signals:
            params.append(self._offset_spins[signal].value())
            params.append(self._width_spins[signal].value())

        self._usbif.send(usb_msg.Timing(*params))

    def _update(self, msg):
        if isinstance(msg, usb_msg.Timing):
            if msg.bplssw_poweron_timeout == 0:
                self.program()
                return

            for signal in self._signals:
                self._waveforms[signal].set_programmed_offset(getattr(msg, signal.lower() + '_offset'))
                self._waveforms[signal].set_programmed_width(getattr(msg, signal.lower() + '_width'))

    def _connected(self, connected):
        if not connected:
            for signal in self._signals:
                self._waveforms[signal].set_programmed_offset(0)
                self._waveforms[signal].set_programmed_width(0)
