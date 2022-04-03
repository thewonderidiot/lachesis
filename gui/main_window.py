from PySide2.QtWidgets import QMainWindow, QGridLayout, QPushButton, QWidget
from PySide2.QtGui import QColor
from usb_interface import USBInterface
from measurements import Measurements
from timing_window import TimingWindow
from indicator import Indicator
from control_window import ControlWindow
import usb_msg

class MainWindow(QMainWindow):
    def __init__(self, parent):
        super().__init__(parent)

        # Set up the serial port
        self._usbif = USBInterface(self)

        # Set up the UI
        self._setup_ui()
        self._timing_window = TimingWindow(self._usbif)
        self._control_window = ControlWindow(self._usbif)

        self._usbif.msg_received.connect(self._update)

    def _setup_ui(self):
        self.setWindowTitle('Core Rope Reader')

        # Create a central widget, give it a layout, and set it up
        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QGridLayout(central)
        central.setLayout(layout)
        layout.setSpacing(0)
        layout.setMargin(0)

        self._bplssw_button = QPushButton('BPLSSW Power')
        self._bplssw_button.clicked.connect(self._toggle_bplssw)
        self._bplssw_button.setCheckable(True)
        layout.addWidget(self._bplssw_button, 0, 0)

        self._bplssw_ind = Indicator(self, QColor(0, 255, 0))
        self._bplssw_ind.setMinimumSize(25, 25)
        layout.addWidget(self._bplssw_ind, 0, 1)

        self._measurements = Measurements(self, self._usbif)
        layout.addWidget(self._measurements, 0, 2, 2, 2)

        button = QPushButton('Timing')
        button.clicked.connect(self._open_timing)
        layout.addWidget(button, 3, 2, 1, 2)

        button = QPushButton('Manual Control')
        button.clicked.connect(self._open_control)
        layout.addWidget(button, 4, 2, 1, 2)

    def _open_timing(self):
        self._timing_window.show()

    def _open_control(self):
        self._control_window.show()

    def _toggle_bplssw(self):
        on = self._bplssw_button.isChecked()
        self._usbif.send(usb_msg.SetBPLSSWState(on))

        self._bplssw_ind.set_on(on)
        if not on:
            self._bplssw_ind.set_color(QColor(0, 255, 0))

    def _update(self, msg):
        if isinstance(msg, usb_msg.RopeStatus):
            if msg.bplssw_state != self._bplssw_button.isChecked():
                self._bplssw_ind.set_on(True)
                self._bplssw_ind.set_color(QColor(255, 0, 0))

    def closeEvent(self, event):
        self._timing_window.close()
        self._control_window.close()
        event.accept()
