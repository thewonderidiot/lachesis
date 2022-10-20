from PySide2.QtWidgets import QMainWindow, QGridLayout, QPushButton, QWidget, QPlainTextEdit, QLabel, QLineEdit, QInputDialog
from PySide2.QtGui import QColor, QFont
from PySide2.QtCore import Qt
import time
import array
import glob
import os

from usb_interface import USBInterface
from measurements import Measurements
from timing_window import TimingWindow
from indicator import Indicator
from control_window import ControlWindow
from rope_db import RopeDB
import usb_msg
import agc

class MainWindow(QMainWindow):
    def __init__(self, parent, app, block1):
        super().__init__(parent)
        self._app = app
        self._block1 = block1

        self._rope_db = RopeDB()
        self._next_strand = 0
        self._bplssw_time = 0

        if block1:
            self._num_strands = 8
        else:
            self._num_strands = 12

        # Set up the serial port
        self._usbif = USBInterface(self)

        # Set up the UI
        self._setup_ui()
        self._timing_window = TimingWindow(self._usbif, block1)
        self._control_window = ControlWindow(self._usbif, block1)

        self._reset()

        self._usbif.msg_received.connect(self._update)

    def _setup_ui(self):
        self.setWindowTitle('Core Rope Reader')

        # Create a central widget, give it a layout, and set it up
        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QGridLayout(central)
        central.setLayout(layout)
        # layout.setSpacing(0)
        # layout.setMargin(0)

        self._banks = []
        self._sums = []
        self._healths = []

        row = 0

        label = QLabel('Rope')
        label.setAlignment(Qt.AlignCenter)
        layout.addWidget(label, row, 0, 1, 3)

        label = QLabel('Module')
        label.setAlignment(Qt.AlignCenter)
        layout.addWidget(label, row, 3)

        label = QLabel('P/N')
        label.setAlignment(Qt.AlignCenter)
        layout.addWidget(label, row, 4)

        label = QLabel('Deck')
        label.setAlignment(Qt.AlignCenter)
        layout.addWidget(label, row, 5)

        row += 1

        label = QLabel('-')
        font = label.font()
        font.setPointSize(16)
        font.setBold(True)

        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, row, 0, 1, 3)
        self._rope_label = label

        label = QLabel('-')
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, row, 3)
        self._module_label = label

        label = QLabel('-')
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, row, 4)
        self._pn_label = label

        label = QLabel('-')
        label.setAlignment(Qt.AlignCenter)
        label.setFont(font)
        layout.addWidget(label, row, 5)
        self._deck_label = label

        row += 1

        label = QLabel('Bank')
        layout.addWidget(label, row, 0)
        label.setAlignment(Qt.AlignCenter)

        label = QLabel('Bugger')
        label.setAlignment(Qt.AlignCenter)
        layout.addWidget(label, row, 1)

        label = QLabel('Health')
        layout.addWidget(label, row, 2)
        label.setAlignment(Qt.AlignCenter)

        label = QLabel('Data')
        layout.addWidget(label, row, 3, 1, 2)
        label.setAlignment(Qt.AlignCenter)

        label = QLabel('Analogs')
        layout.addWidget(label, row, 5)
        label.setAlignment(Qt.AlignCenter)

        row += 1

        for bank in range(row, row+self._num_strands//2):
            bank_label = QLabel('--', self)
            layout.addWidget(bank_label, bank, 0)
            self._banks.append(bank_label)

            bank_label.setFont(font)
            bank_label.setAlignment(Qt.AlignCenter)

            sum_edit = QLineEdit(self)
            sum_edit.setText('000000')
            sum_edit.setFont(font)
            sum_edit.setFixedWidth(90)
            sum_edit.setReadOnly(True)
            sum_edit.setAlignment(Qt.AlignCenter)
            layout.addWidget(sum_edit, bank, 1)
            self._sums.append(sum_edit)

            health = Indicator(self, QColor(0, 255, 0))
            health.setMinimumSize(25, 25)
            layout.addWidget(health, bank, 2)
            self._healths.append(health)
            
        self._data_text = QPlainTextEdit(self)
        self._data_text.setReadOnly(True)
        self._data_text.setFixedWidth(260)
        self._data_text.setUndoRedoEnabled(False)
        self._data_text.verticalScrollBar().setValue(0)
        font = QFont('Monospace')
        font.setStyleHint(QFont.TypeWriter)
        self._data_text.setFont(font)
        layout.addWidget(self._data_text, row, 3, 7, 2)

        self._measurements = Measurements(self, self._usbif)
        layout.addWidget(self._measurements, row, 5, 4, 1)

        button = QPushButton('Timing')
        button.clicked.connect(self._open_timing)
        layout.addWidget(button, row + 4, 5)

        button = QPushButton('Manual Control')
        button.clicked.connect(self._open_control)
        layout.addWidget(button, row + 5, 5)

        row += 6

        self._bplssw_button = QPushButton('BPLSSW')
        self._bplssw_button.clicked.connect(self._toggle_bplssw)
        self._bplssw_button.setCheckable(True)
        layout.addWidget(self._bplssw_button, row, 0, 1, 2)

        self._bplssw_ind = Indicator(self, QColor(0, 255, 0))
        self._bplssw_ind.setMinimumSize(25, 25)
        layout.addWidget(self._bplssw_ind, row, 2)

        button = QPushButton('Read Rope')
        button.clicked.connect(self._read_rope)
        button.setEnabled(False)
        layout.addWidget(button, row, 5)
        self._read_rope_button = button

    def _open_timing(self):
        self._timing_window.show()

    def _open_control(self):
        self._control_window.show()

    def _read_rope(self):
        self._reset()
        self._read_rope_button.setEnabled(False)
        self._data_text.setPlainText('')
        self._app.processEvents()

        self._next_strand = 1
        if self._block1:
            self._usbif.send(usb_msg.ReadStrandBlk1(0))
        else:
            self._usbif.send(usb_msg.ReadStrand(0))

    def _toggle_bplssw(self):
        on = self._bplssw_button.isChecked()

        self._bplssw_ind.set_on(on)
        if not on:
            self._bplssw_ind.set_color(QColor(0, 255, 0))

        self._bplssw_time = time.time()
        self._usbif.send(usb_msg.SetBPLSSWState(on))

    def _update(self, msg):
        if isinstance(msg, usb_msg.RopeStatus):
            self._read_rope_button.setEnabled(msg.bplssw_state)
            if (time.time() > self._bplssw_time + 0.1) and (msg.bplssw_state != self._bplssw_button.isChecked()):
                self._bplssw_ind.set_on(True)
                self._bplssw_ind.set_color(QColor(255, 0, 0))

        elif isinstance(msg, usb_msg.Strand):
            # Immediately kick off the next strand so the hardware can think
            # while we're processing this one
            if self._next_strand < self._num_strands:
                if self._block1:
                    self._usbif.send(usb_msg.ReadStrandBlk1(self._next_strand))
                else:
                    self._usbif.send(usb_msg.ReadStrand(self._next_strand))

            self._words.extend(msg.words)

            if self._next_strand % 2 == 0:
                bank_idx = self._next_strand // 2 - 1
                html, bugger, bank, health = agc.disassemble_bank(self._words[-1024:], bank_idx)
                self._buggers.append(bugger)
                self._sums[bank_idx].setText('%06o' % bugger)
                self._banks[bank_idx].setText(bank)
                self._healths[bank_idx].set_on(True)
                if health:
                    self._healths[bank_idx].set_color(QColor(0, 255, 0))
                else:
                    self._healths[bank_idx].set_color(QColor(255, 0, 0))
                    self._all_healthy = False
                self._app.processEvents()
                self._data_text.appendHtml(html)

            self._next_strand += 1
            if self._next_strand > self._num_strands:
                self._process_rope()
                self._next_strand = 0
                self._read_rope_button.setEnabled(True)
                self._data_text.verticalScrollBar().setValue(0)
                

    def _process_rope(self):
        prog, mod, pn, deck = self._rope_db.find_rope(self._buggers)
        if pn == '-':
            pn, ok = QInputDialog.getItem(self, 'Rope Module Part Number', 'Select P/N of Unknown Module:',
                                          self._rope_db.get_unknown_partnos())
            prog, mod, pn, deck = self._rope_db.identify_rope(pn, self._buggers, self._all_healthy)

        fn = pn
        existing_dumps = glob.glob(pn + '*', root_dir='dumps')
        if len(existing_dumps) > 0:
            fn += chr(ord('a') + len(existing_dumps) - 1)
        fn += '.bin'

        word_array = array.array('H', self._words)
        word_array.byteswap()
        with open(os.path.join('dumps', fn), 'wb') as f:
            word_array.tofile(f)

        self._rope_label.setText(prog)
        self._module_label.setText(mod)
        self._pn_label.setText(pn)
        self._deck_label.setText(deck)

    def _reset(self):
        self._words = []
        self._buggers = []
        self._data_text.setPlainText('')
        self._all_healthy = True
        for i in range(self._num_strands//2):
            self._sums[i].setText('000000')
            self._banks[i].setText('--')
            self._healths[i].set_color(QColor(0, 255, 0))
            self._healths[i].set_on(False)
        self._rope_label.setText('-')
        self._module_label.setText('-')
        self._pn_label.setText('-')
        self._deck_label.setText('-')

    def closeEvent(self, event):
        self._timing_window.close()
        self._control_window.close()
        event.accept()
