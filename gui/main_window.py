from PySide2.QtWidgets import QMainWindow, QVBoxLayout, QPushButton, QWidget
from usb_interface import USBInterface
from measurements import Measurements
from timing_window import TimingWindow
# from control_window import ControlWindow

class MainWindow(QMainWindow):
    def __init__(self, parent):
        super().__init__(parent)

        # Set up the serial port
        self._usbif = USBInterface(self)

        # Set up the UI
        self._setup_ui()
        self._timing_window = TimingWindow(self._usbif)
        # self._control_window = ControlWindow()

    def _setup_ui(self):
        self.setWindowTitle('Core Rope Reader')

        # Create a central widget, give it a layout, and set it up
        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        central.setLayout(layout)
        layout.setSpacing(0)
        layout.setMargin(0)

        self._measurements = Measurements(self, self._usbif)
        layout.addWidget(self._measurements)

        button = QPushButton('Timing')
        button.clicked.connect(self._open_timing)
        layout.addWidget(button)

        # button = QPushButton('Control')
        # button.clicked.connect(self._open_control)
        # layout.addWidget(button)

    def _open_timing(self):
        self._timing_window.show()

    # def _open_control(self):
    #     self._control_window.show()
