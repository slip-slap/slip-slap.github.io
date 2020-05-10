---
layout: post
title: "Python: Picture Display"
keywords: [] 
description: 
category: "PL"
tags: ["python","pyqt5"]
---
{% include JB/setup %}

#### Display a picutre
In nature, There is no difference between text label and picture label. <br />
So, you can put a picture in a label. <br />
Programming look into the essence of the world.


```python
import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel
from PyQt5.QtGui import QIcon, QPixmap
import matplotlib.pyplot as plt


class App(QWidget):

    def __init__(self):
        super().__init__()
        self.title = 'PyQt5 image - pythonspot.com'
        self.left = 10
        self.top = 10
        self.width = 640
        self.height = 480
        self.initUI()

    def initUI(self):
        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)

        # Create widget
        label = QLabel(self)
        pixmap = QPixmap('df.png')
        label.setPixmap(pixmap)
        self.resize(pixmap.width(),pixmap.height())
        self.show()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = App()
    sys.exit(app.exec_())

```
