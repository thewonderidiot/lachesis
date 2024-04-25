from PySide6.QtWidgets import QWidget, QLabel, QVBoxLayout, QHBoxLayout, QGridLayout, \
                              QGroupBox, QPushButton, QLineEdit, QSizePolicy
from PySide6.QtGui import QColor
from address_spinbox import AddressSpinBox
from indicator import Indicator
import usb_msg

class ControlWindow(QWidget):
    def __init__(self, usbif, block1):
        super().__init__()

        self._block1 = block1
        self._usbif = usbif
        self._setup_ui()

        usbif.msg_received.connect(self._update)

    def _update(self, msg):
        if isinstance(msg, usb_msg.RopeStatus):
            self._sbf_ind.set_on(msg.sbf_state)
            self._cycle_address.setText('%05o' % msg.last_address)
            word = ((msg.sensed_word >> 1) & 0o40000) | (msg.sensed_word & 0o37777)
            parity = (msg.sensed_word >> 14) & 1
            self._cycle_word.setText('%05o %o' % (word, parity))

    def _toggle_sbf(self):
        on = self._sbf_button.isChecked()
        self._usbif.send(usb_msg.SetSBFState(on))

    def _read_address(self):
        if self._block1:
            self._usbif.send(usb_msg.ReadAddressBlk1(self._next_address.value()))
        else:
            self._usbif.send(usb_msg.ReadAddress(self._next_address.value()))

    def _jam_address(self):
        self._usbif.send(usb_msg.JamAddress(self._next_address.value()))

    def _setup_ui(self):
        self.setWindowTitle('Manual Control')

        layout = QHBoxLayout()
        self.setLayout(layout)

        box = QGroupBox('Set Drivers', self)
        layout.addWidget(box)
        box_layout = QVBoxLayout()
        box.setLayout(box_layout)

        wires = ['AB', 'CD']
        for i,s in enumerate(wires):
            button = QPushButton('SET' + s)
            button.clicked.connect(lambda s=0, c=i: self._usbif.send(usb_msg.PulseSet(c)))
            box_layout.addWidget(button)

        wires = ['A', 'B', 'C', 'D']
        for i,s in enumerate(wires):
            button = QPushButton('RESET' + s)
            button.clicked.connect(lambda s=0, c=i: self._usbif.send(usb_msg.PulseReset(c)))
            box_layout.addWidget(button)

        box = QGroupBox('Inhibit Drivers', self)
        layout.addWidget(box)
        box_layout = QGridLayout()
        box.setLayout(box_layout)
        wires = ['01', '02', '03', '04', '05', '06', '07', 'P']
        for i,s in enumerate(wires):
            button = QPushButton('IL' + s)
            button.clicked.connect(lambda s=0, c=i: self._usbif.send(usb_msg.PulseInhibit(c)))
            box_layout.addWidget(button, i, 0)

            button = QPushButton('IL' + s + '/')
            button.clicked.connect(lambda s=0, c=i+len(wires): self._usbif.send(usb_msg.PulseInhibit(c)))
            box_layout.addWidget(button, i, 1)

        box = QGroupBox('Strands', self)
        layout.addWidget(box)
        box_layout = QGridLayout()
        box.setLayout(box_layout)

        for i in range(12):
            button = QPushButton('STR%02u' % (i + 1))
            button.clicked.connect(lambda s=0, c=i: self._usbif.send(usb_msg.PulseStrand(c)))
            box_layout.addWidget(button, i % 6, i // 6)

        column = QWidget(self)
        layout.addWidget(column)
        column_layout = QVBoxLayout()
        # column_layout.setMargin(0)
        column.setMaximumWidth(160)
        column.setLayout(column_layout)

        box = QGroupBox('Cycle Results', self)
        column_layout.addWidget(box)
        box_layout = QGridLayout()
        box.setLayout(box_layout)

        label = QLabel('Address:')
        box_layout.addWidget(label, 0, 0)

        self._cycle_address = QLineEdit(self)
        self._cycle_address.setText('00000')
        self._cycle_address.setReadOnly(True)
        box_layout.addWidget(self._cycle_address, 0, 1)

        label = QLabel('Word:')
        box_layout.addWidget(label, 1, 0)

        self._cycle_word = QLineEdit(self)
        self._cycle_word.setText('00000 0')
        self._cycle_word.setReadOnly(True)
        box_layout.addWidget(self._cycle_word, 1, 1)

        box = QGroupBox('Manual Cycle', self)
        column_layout.addWidget(box)
        box_layout = QGridLayout()
        box.setLayout(box_layout)

        label = QLabel('Address:')
        box_layout.addWidget(label, 0, 0)

        self._next_address = AddressSpinBox(self)
        self._next_address.setMaximum(0o13777)
        self._next_address.setValue(0)
        box_layout.addWidget(self._next_address, 0, 1)

        button = QPushButton('Read Address')
        button.clicked.connect(self._read_address)
        box_layout.addWidget(button, 2, 0, 1, 2)

        button = QPushButton('Jam Address')
        button.clicked.connect(self._jam_address)
        box_layout.addWidget(button, 3, 0, 1, 2)

        box = QGroupBox('Sense Strobe', self)
        column_layout.addWidget(box)
        box_layout = QHBoxLayout()
        box.setLayout(box_layout)

        self._sbf_button = QPushButton('SBF Hold')
        self._sbf_button.setCheckable(True)
        self._sbf_button.clicked.connect(self._toggle_sbf)
        box_layout.addWidget(self._sbf_button)

        self._sbf_ind = Indicator(self, QColor(0, 255, 0))
        self._sbf_ind.setMinimumSize(25, 25)
        box_layout.addWidget(self._sbf_ind)
