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
        self.index = 0

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
                    self.index+=1
                    tmp = str(url.toLocalFile())
                    links.append(tmp)
                    onlyFileName = tmp.split("/")[-1]
                    linkNames.append(str(self.index)+". "+onlyFileName)
                    self.addItem(str(self.index)+". "+onlyFileName)

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
        self.frame1.setGeometry(QtCore.QRect(50, 540, 780, 30))
        self.frame1.setObjectName("frame1")

        self.horizontalLayout = QtWidgets.QHBoxLayout(self.frame1)
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout.setObjectName("horizontalLayout")

        self.importFileButton = QtWidgets.QPushButton(self.frame1)
        self.importFileButton.setObjectName("importFileButton")
        self.horizontalLayout.addWidget(self.importFileButton)

        spacerItem1 = QtWidgets.QSpacerItem(120, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)

        self.importFolderButton = QtWidgets.QPushButton(self.frame1)
        self.importFolderButton.setObjectName("importFolderButton")
        self.horizontalLayout.addWidget(self.importFolderButton)

        spacerItem = QtWidgets.QSpacerItem(512, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
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
        self.importFileButton.clicked.connect(self.importFileSlot)
        self.importFolderButton.clicked.connect(self.importDirectorySlot)
        self.exportButton.clicked.connect(self.exportSlot)
        self.readButton.clicked.connect(self.readFileSlot)        
        QtCore.QMetaObject.connectSlotsByName(MainWindow)


    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.readButton.setText(_translate("MainWindow", "Read File"))
        self.plainTextEdit.setDocumentTitle(_translate("MainWindow", "Output"))
        self.importFileButton.setText(_translate("MainWindow", "Import File"))
        self.importFolderButton.setText(_translate("MainWindow", "Import Folder"))
        self.exportButton.setText(_translate("MainWindow", "Export"))


    @pyqtSlot( )
    def importFileSlot( self ):
        pass

    @pyqtSlot( )
    def importDirectorySlot( self ):
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

