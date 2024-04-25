from PySide6.QtWidgets import QSpinBox

class AddressSpinBox(QSpinBox):
    def __init__(self, parent):
        super().__init__(parent)
        self._digits = 1
        self.setDisplayIntegerBase(8)

    def setMaximum(self, max_value):
        self._digits = len('%o' % max_value)
        super().setMaximum(max_value)

    def valueFromText(self, text):
        return int(text, 8)

    def textFromValue(self, value):
        fmt_str = '%0' + str(self._digits) + 'o'
        return (fmt_str % value)
