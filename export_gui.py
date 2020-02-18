from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton
from PyQt5.QtCore import Qt, QUrl
from tkinter import * 
import csv
from tkinter.filedialog import asksaveasfile 
from tkinter.filedialog import askopenfile 




class ListBoxWidget(QListWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setAcceptDrops(True)
        self.setDragDropOverwriteMode(True)
        self.setGeometry(QtCore.QRect(30, 20, 301, 511))

    def dragEnterEvent(self, event):
        if event.mimeData().hasUrls():
            event.accept()
        else:
            event.ignore()

    def dragMoveEvent(self, event):
        if event.mimeData().hasUrls():
            event.setDropAction(Qt.CopyAction)
            event.accept()
        else:
            event.ignore()

    def dropEvent(self, event):
        links = set([])

        if event.mimeData().hasUrls():
            event.setDropAction(Qt.CopyAction)
            event.accept()

            for url in event.mimeData().urls():
                if url.isLocalFile():
                    links.add(str(url.toLocalFile()))
                else:
                    links.add(str(url.toString()))

            self.addItems(links)
            print(links)
        else:
            event.ignore()





class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(948, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")

        self.lstbox = ListBoxWidget(MainWindow)

        self.readButton = QtWidgets.QPushButton(self.centralwidget)
        self.readButton.setGeometry(QtCore.QRect(410, 250, 93, 28))
        self.readButton.setObjectName("readButton")

        self.exportButton = QtWidgets.QPushButton(self.centralwidget)
        self.exportButton.setGeometry(QtCore.QRect(730, 540, 93, 28))
        self.exportButton.setObjectName("readButton")

        self.importButton = QtWidgets.QPushButton(self.centralwidget)
        self.importButton.setGeometry(QtCore.QRect(130, 540, 93, 28))
        self.importButton.setObjectName("readButton")


        self.plainTextEdit = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.plainTextEdit.setGeometry(QtCore.QRect(620, 20, 301, 511))
        self.plainTextEdit.setAcceptDrops(False)
        self.plainTextEdit.setReadOnly(True)
        self.plainTextEdit.setBackgroundVisible(False)
        self.plainTextEdit.setObjectName("plainTextEdit")

        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 948, 26))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.readButton.clicked.connect(lambda: self.openCurrentFile())
        self.exportButton.clicked.connect(lambda: self.save())
        self.importButton.clicked.connect(lambda: self.upload())



        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)


    def getCurrentFile(self):
        item = QListWidgetItem(self.lstbox.currentItem())
        return item.text()

    def save(self): 
        files = [('All Files', '*.*'),  
             ('Python Files', '*.py'), 
             ('Text Document', '*.txt')] 
        file = asksaveasfile(filetypes = files, defaultextension = files) 
  
    def upload(self): 
        file = askopenfile(mode ='r', filetypes =[('Python Files', '*.py')]) 
        if file is not None: 
            content = file.read() 
            print(content)        

    def openCurrentFile(self):
        self.path = self.getCurrentFile()
        if self.path=='':
            print("no file uploaded")
        self.text = open(str(self.path)).read()
        self.plainTextEdit.setPlainText(self.text)


    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.readButton.setText(_translate("MainWindow", "Read File"))
        self.exportButton.setText(_translate("MainWindow", "Export File"))
        self.importButton.setText(_translate("MainWindow", "Import File"))


        self.plainTextEdit.setDocumentTitle(_translate("MainWindow", "Output"))





if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
