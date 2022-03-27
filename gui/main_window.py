from PySide2.QtWidgets import QMainWindow, QVBoxLayout, QPushButton, QWidget
from usb_interface import USBInterface
from measurements import Measurements
from tuning import TuningWindow

class MainWindow(QMainWindow):
    def __init__(self, parent):
        super().__init__(parent)

        # Set up the serial port
        self._usbif = USBInterface(self)

        # Set up the UI
        self._setup_ui()
        self._tuning_window = TuningWindow()

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

        button = QPushButton('Tuning')
        button.clicked.connect(self._open_tuning)
        layout.addWidget(button)

    def _open_tuning(self):
        self._tuning_window.show()
