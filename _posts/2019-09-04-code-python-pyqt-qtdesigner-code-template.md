---
layout: post
title: "Code Integrated Template of QT Designer and Pyqt5"
keywords: ["python"] 
description: "python"
category: "python"
tags: ["code"]
---
{% include JB/setup %}


#### signal and slot
If you have a programming backgound, you may hear about event handling where you interact with a widget
and a function is executed. <br />
The idea in PyQt5 is the same but definitions are a bit different. <br />
So when you click a QPushButton, a signal is emitted. The signal name in this case is called clicked(). <br />
In order to bind the emitted signal with a slot, you need to use the **connect()** method as you will see. <br />
This event handling process continues to work until you close your form or main widget. <br />

+ connect the clicked() signal with a slot using connect() method like this:

```python
self.ui.pushButton.clicked.connect(self.btnClicked)
```
the bthClicked here is the slot or the function that will be executed when you click the QBushButton


1. The following code is the gui created by the Qtdesigner

```python

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.pushButton = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton.setGeometry(QtCore.QRect(230, 290, 113, 32))
        self.pushButton.setObjectName("pushButton")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(230, 230, 60, 16))
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.pushButton.setText(_translate("MainWindow", "Change"))
        self.label.setText(_translate("MainWindow", "a"))
```

2. The following code is the control part

```python
from PyQt5 import QtWidgets, QtGui, QtCore
from design import Ui_MainWindow
import sys

class mywindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(mywindow,self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.btnClicked)

    def btnClicked(self):
        self.ui.label.setText("changed")



app = QtWidgets.QApplication([])
application = mywindow()
application.show()

sys.exit(app.exec())
```







