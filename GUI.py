from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, pyqtSlot
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton
from mainFrame import Ui_MainWindow, links, linkNames
import sys
from fileReader import FileReader

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
    	output = self.plainTextEdit.toPlainText()
    	if output is not '':
        	self.fileReader.writeDoc(output)
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
            self.text = open(str(links[index])).read()
            self.plainTextEdit.setPlainText(self.text)



def main():
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowUIClass()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

main()