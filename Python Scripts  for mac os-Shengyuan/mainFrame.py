import base64
import os.path
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton
from PyQt5.QtCore import Qt, QUrl, QSize, QObject, pyqtSlot
from PyQt5.QtGui import QIcon

links = []
linkNames = []

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

        if event.mimeData().hasUrls():
            event.setDropAction(Qt.CopyAction)
            event.accept()

            for url in event.mimeData().urls():
                if url.isLocalFile():
                    tmp = str(url.toLocalFile())
                    links.append(tmp)
                    onlyFileName = tmp.split("/")[-1]
                    linkNames.append(onlyFileName)
                    self.addItem(onlyFileName)

            # for file in links:
            #     fileName = file.split("/")[-1]
            #     self.addItem(fileName)
            print(links)
        else:
            event.ignore()


class Ui_MainWindow(QObject):
    def setupUi(self, MainWindow):

        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(948, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")

        self.lstbox = ListBoxWidget(MainWindow)

        self.readButton = QtWidgets.QPushButton(self.centralwidget)
        self.readButton.setGeometry(QtCore.QRect(430, 250, 93, 28))
        self.readButton.setObjectName("readButton")

        self.plainTextEdit = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.plainTextEdit.setGeometry(QtCore.QRect(620, 20, 301, 511))
        self.plainTextEdit.setAcceptDrops(False)
        self.plainTextEdit.setReadOnly(True)
        self.plainTextEdit.setBackgroundVisible(False)
        self.plainTextEdit.setObjectName("plainTextEdit")

        self.frame1 = QtWidgets.QWidget(self.centralwidget)
        self.frame1.setGeometry(QtCore.QRect(120, 540, 701, 30))
        self.frame1.setObjectName("frame1")

        self.horizontalLayout = QtWidgets.QHBoxLayout(self.frame1)
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout.setObjectName("horizontalLayout")

        self.importButton = QtWidgets.QPushButton(self.frame1)
        self.importButton.setObjectName("importButton")

        self.horizontalLayout.addWidget(self.importButton)
        spacerItem = QtWidgets.QSpacerItem(518, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)

        self.exportButton = QtWidgets.QPushButton(self.frame1)
        self.exportButton.setObjectName("exportButton")
        self.horizontalLayout.addWidget(self.exportButton)

        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 948, 26))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)

        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        self.importButton.clicked.connect(self.importSlot)
        self.exportButton.clicked.connect(self.exportSlot)
        self.readButton.clicked.connect(self.readFileSlot)        
        QtCore.QMetaObject.connectSlotsByName(MainWindow)


    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.readButton.setText(_translate("MainWindow", "Read File"))
        self.plainTextEdit.setDocumentTitle(_translate("MainWindow", "Output"))
        self.importButton.setText(_translate("MainWindow", "Import"))
        self.exportButton.setText(_translate("MainWindow", "Export"))

    @pyqtSlot( )
    def importSlot( self ):
        pass

    @pyqtSlot( )
    def exportSlot( self ):
        pass

    @pyqtSlot( )
    def readFileSlot( self ):
        pass


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())