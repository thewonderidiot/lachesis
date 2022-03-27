from PySide2.QtWidgets import QWidget, QLabel, QDoubleSpinBox, QGridLayout, QSpacerItem, QSizePolicy, QPushButton
from waveform import Waveform

class TuningWindow(QWidget):
    def __init__(self):
        super().__init__()

        self.setWindowTitle('Rope Cycle Tuning')

        layout = QGridLayout()
        layout.setSpacing(0)
        self.setLayout(layout)

        label = QLabel('Signal')
        layout.addWidget(label, 0, 0)
        spacer = QSpacerItem(8, 1, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 0, 1)
        label = QLabel('Offset (us)')
        layout.addWidget(label, 0, 2)
        spacer = QSpacerItem(8, 1, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 0, 3)
        label = QLabel('Width (us)')
        layout.addWidget(label, 0, 4)
        spacer = QSpacerItem(8, 1, QSizePolicy.Minimum, QSizePolicy.Minimum)
        layout.addItem(spacer, 0, 5)

        signals = {
            'IHENV':  [0.1, 4.2],
            'RESET1': [2.0, 2.3],
            'SET':    [2.0, 2.3],
            'STRGAT': [5.3, 5.8],
            'RESET2': [8.6, 2.5],
            'SBF':    [9.8, 0.7],
        }

        for i,signal in enumerate(signals.keys()):
            o, w = signals[signal]
            label = QLabel(signal)
            layout.addWidget(label, i+1, 0)

            spin1 = QDoubleSpinBox()
            spin1.setDecimals(2)
            spin1.setSingleStep(0.01)
            spin1.setMinimum(0.1)
            spin1.setMaximum(11.5)
            layout.addWidget(spin1, i+1, 2)

            spin2 = QDoubleSpinBox()
            spin2.setDecimals(2)
            spin2.setSingleStep(0.01)
            spin2.setMinimum(0.1)
            spin2.setMaximum(11.7)
            layout.addWidget(spin2, i+1, 4)

            waveform = Waveform(self)
            layout.addWidget(waveform, i+1, 6)
            spin1.valueChanged.connect(waveform.set_pulse_offset)
            spin2.valueChanged.connect(waveform.set_pulse_width)
            spin1.setValue(o)
            spin2.setValue(w)

        label = QLabel('Reader:')
        layout.addWidget(label, len(signals) + 1, 0)
        button = QPushButton('Refresh')
        layout.addWidget(button, len(signals) + 1, 2)
        button = QPushButton('Commit')
        layout.addWidget(button, len(signals) + 1, 4)


