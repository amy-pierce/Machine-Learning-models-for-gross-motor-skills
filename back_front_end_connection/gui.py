from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, pyqtSlot
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton
from mainFrame import Ui_MainWindow, links, linkNames
import sys
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
        print(selectedFileName)
        links.append(selectedFileName)
        self.lstbox.addItem(selectedFileName.split("/")[-1])

    def clearText(self):
    	self.plainTextEdit.clear()
    	self.plainTextEdit.setPlainText("Export CSV File Success")

    # slot
    def exportSlot(self):
    	output = self.results
    	if len(output) > 0:
        	self.fileReader.writeDoc(output,self.path)
        	self.clearText()

    # slot
    def importSlot(self):
        options = QtWidgets.QFileDialog.Options()
        options |= QtWidgets.QFileDialog.DontUseNativeDialog
        fileName, _ = QtWidgets.QFileDialog.getOpenFileName(
                        None,
                        "File Broswer",
                        "",
                        "All Files (*);;Python Files (*.py)",
                        options=options)
        if fileName:
            self.fileReader.setFileName( fileName )
            self.refreshAll()

    # slot
    def readFileSlot(self):
        self.path = QListWidgetItem(self.lstbox.currentItem()).text()
        if self.path != '':
            index = linkNames.index(self.path)
            self.parseData = Parser(str(links[index]))
            pickleName = self.parseData.parse()
            self.testing = Testing(pickleName)
            self.results = self.testing.analyse()
            self.text = ""
            for result in self.results:
                self.text += result[0] + " is " + result[1] + "% " + result[2] + "\n"
            self.plainTextEdit.setPlainText(self.text)



def main():
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowUIClass()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

main()