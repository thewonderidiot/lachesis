from PySide6.QtWidgets import QGroupBox, QGridLayout, QLabel, QLineEdit
from PySide6.QtGui import QFont
from PySide6.QtCore import Qt
import usb_msg

class Measurements(QGroupBox):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        
        self._usbif = usbif

        self._setup_ui()

        usbif.msg_received.connect(self._update)

    def _update(self, msg):
        if isinstance(msg, usb_msg.SysStatus):
            self._temp.setText('%.02f C' % msg.temp)
            self._vccint.setText('%.02f V' % msg.vccint)
            self._vccaux.setText('%.02f V' % msg.vccaux)
            self._v14p0.setText('%.02f V' % msg.v14p0)
            self._v5p0.setText('%.02f V' % msg.v5p0)

    def _setup_ui(self):
        layout = QGridLayout(self)
        self.setLayout(layout)
        # layout.setMargin(3)
        layout.setHorizontalSpacing(10)
        layout.setVerticalSpacing(1)

        self._temp = self._create_meas('TEMP', layout, 1, 0, True)
        self._vccint = self._create_meas('VCCINT', layout, 2, 0, False)
        self._vccaux = self._create_meas('VCCAUX', layout, 3, 0, False)
        self._v14p0 = self._create_meas('BPLUS', layout, 4, 0, False)
        self._v5p0 = self._create_meas('+5V', layout, 5, 0, False)

    def _create_meas(self, name, layout, row, col, temp):
        label = QLabel(name, self)
        font = label.font()
        font.setPointSize(8)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, row, col)
        layout.setAlignment(label, Qt.AlignRight)

        meas_value = QLineEdit(self)
        meas_value.setReadOnly(True)
        meas_value.setMaximumSize(72, 32)
        font = QFont('Monospace')
        font.setStyleHint(QFont.TypeWriter)
        font.setPointSize(10)
        meas_value.setFont(font)
        meas_value.setAlignment(Qt.AlignCenter)
        if temp:
            meas_value.setText('0.00 C')
        else:
            meas_value.setText('0.00 V')
        layout.addWidget(meas_value, row, col + 1)
        layout.setAlignment(meas_value, Qt.AlignLeft)

        return meas_value
