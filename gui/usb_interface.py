from PySide2.QtCore import QObject, QIODevice, Signal
from PySide2.QtSerialPort import QSerialPort, QSerialPortInfo
from slip import unslip_from
import usb_msg

class USBInterface(QObject):
    msg_received = Signal(object)

    def __init__(self, parent):
        super().__init__(parent)

        self._serial = None
        self._rx_bytes = b''

        for info in QSerialPortInfo.availablePorts():
            if ((info.manufacturer() == 'Digilent') and
                (info.hasVendorIdentifier() and info.vendorIdentifier() == 0x0403) and
                (info.hasProductIdentifier() and info.productIdentifier() == 0x6010)):
                self._serial = QSerialPort(info, self)
                break

        if self._serial == None:
            raise RuntimeError('Unable to locate serial device!')

        self._serial.setBaudRate(115200)
        self._serial.readyRead.connect(self._read_data)
        if not self._serial.open(QIODevice.ReadWrite):
            raise RuntimeError('Failed to open %s' % info.name())

    def _read_data(self):
        self._rx_bytes += bytes(self._serial.readAll())
        while self._rx_bytes != b'':
            msg_bytes, self._rx_bytes = unslip_from(self._rx_bytes)
            if msg_bytes == b'':
                break

            msg = usb_msg.unpack(msg_bytes)
            if msg is not None:
                self.msg_received.emit(msg)
