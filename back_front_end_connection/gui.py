from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton, QFileDialog, QWidget, QVBoxLayout
from mainFrame import Ui_MainWindow, links, linkNames
import sys
import time
from fileReader import FileReader
from ModelTesting import Testing
from ParseData import Parser

class MainWindowUIClass(Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.fileReader = FileReader()
        
    def setupUi(self, MW):
        super().setupUi( MW )

    def refreshAll(self):
        selectedFileName = self.fileReader.getFileName()
        links.append(selectedFileName)
        self.lstbox.index += 1
        onlyFileName = selectedFileName.split("/")[-1]
        linkNames.append(str(self.lstbox.index)+". "+onlyFileName)
        self.lstbox.addItem(str(self.lstbox.index)+". "+onlyFileName)

    def clearText(self):
    	self.plainTextEdit.clear()
    	self.plainTextEdit.setPlainText("Export CSV File Success")

    # slot
    def exportSlot(self):
    	output = self.plainTextEdit.toPlainText()
    	if output is not '':
        	self.fileReader.writeDoc(output)
        	self.clearText()

    # slot
    def importFileSlot(self):
        options = QtWidgets.QFileDialog.Options()
        fileName, _ = QtWidgets.QFileDialog.getOpenFileName(
                        None,
                        "File Broswer",
                        "",
                        "All Files (*);;Python Files (*.py)",
                        options=options)
        if fileName:
            self.fileReader.setFileName(fileName)
            self.refreshAll()


    # slot
    def importDirectorySlot(self):
        getExistingDirectory = QFileDialog.getExistingDirectory
        fileName = getExistingDirectory(None,
                                       	'Folder Broswer',
                                        "")
        if fileName:
            self.fileReader.setFileName(fileName)
            self.refreshAll()

    # slot
    def readFileSlot(self):
        self.path = QListWidgetItem(self.lstbox.currentItem()).text()
        self.showProgress = PopUpProgressBar()
        self.showProgress.show()
        if self.path != '':
            index = linkNames.index(self.path)
            self.parseData = Parser(str(links[index]))
            pickleName = self.parseData.parse(self.showProgress)
            self.testing = Testing(pickleName)
            self.results = self.testing.analyse(self.showProgress)
            self.text = ""
            for result in self.results:
                self.text += result[0] + " is " + result[1] + "% " + result[2] + "\n"
            self.plainTextEdit.setPlainText(self.text)


class PopUpProgressBar(QWidget):
    def __init__(self,parent=None):
        super(PopUpProgressBar, self).__init__(parent)
        self.box = QtWidgets.QVBoxLayout(self)
        self.pB = QtWidgets.QProgressBar(self)
        self.label = QtWidgets.QLabel("Hi",self)
        self.label.setGeometry(12,0,700,50)
        self.pB.setRange(0,100)
        self.pB.setGeometry(30, 40, 700, 100)
        self.box.addWidget(self.pB)
        self.setLayout(self.box)
        self.setGeometry(300, 300, 550, 100)
        self.setWindowTitle('Progress')



def main():
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowUIClass()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

main()