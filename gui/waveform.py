from PySide2.QtWidgets import QWidget, QSizePolicy
from PySide2.QtGui import QPainter, QColor, QPalette, QPen
from PySide2.QtCore import Qt

class Waveform(QWidget):
    def __init__(self, parent):
        super().__init__(parent)

        palette = self.palette()
        palette.setColor(QPalette.Window, QColor(0, 0, 0))
        self.setPalette(palette)
        self.setAutoFillBackground(True)

        self.setSizePolicy(QSizePolicy.MinimumExpanding, QSizePolicy.MinimumExpanding)
        self.setMinimumSize(600, 40)

        self._programmed_offset = None
        self._programmed_width = None

        self._pulse_offset = 0.1
        self._pulse_width = 0.1

    def set_pulse_offset(self, offset):
        self._pulse_offset = offset
        self.update()

    def set_pulse_width(self, width):
        self._pulse_width = width
        self.update()

    def _matches_programmed(self):
        return ((round(self._pulse_width * 100) == self._programmed_width) and
                (round(self._pulse_offset * 100) == self._programmed_offset))

    def paintEvent(self, e):
        painter = QPainter()
        painter.begin(self)

        pen = painter.pen()
        pen.setStyle(Qt.DotLine)
        pen.setColor(QColor(0xA0, 0xA0, 0xA0))
        painter.setPen(pen)

        scale = self.width() / 12
        for i in range(1,12):
            painter.drawLine(scale*i, 0, scale*i, self.height())

        pen.setStyle(Qt.SolidLine)

        if self._programmed_width is None:
            pen.setColor(QColor(0x70, 0x70, 0x70))
        elif self._matches_programmed():
            pen.setColor(QColor(0x00, 0xFF, 0x00))
        else:
            pen.setColor(QColor(0x00, 0xFF, 0xFF))

        painter.setPen(pen)

        t_rise = self._pulse_offset * scale
        t_fall = (self._pulse_offset + self._pulse_width) * scale
        top = 10
        bottom = self.height() - 10

        painter.drawLine(0, bottom, t_rise, bottom)
        painter.drawLine(t_rise, bottom, t_rise, top)
        painter.drawLine(t_rise, top, t_fall, top)
        painter.drawLine(t_fall, top, t_fall, bottom)
        painter.drawLine(t_fall, bottom, self.width(), bottom)

        painter.end()
