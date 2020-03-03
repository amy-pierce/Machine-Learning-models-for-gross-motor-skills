from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton, QFileDialog, QWidget, QVBoxLayout
from mainFrame import Ui_MainWindow, links, linkNames
import sys
import time
from fileReader import FileReader

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
        if self.path != '':
            index = linkNames.index(self.path)
            self.text = open(str(links[index])).read()
            self.plainTextEdit.setPlainText(self.text)
        self.showProgress = PopUpProgressBar()
        self.showProgress.show()


class PopUpProgressBar(QWidget):
	def __init__(self,parent=None):
		super(PopUpProgressBar, self).__init__(parent)
		self.box = QtWidgets.QVBoxLayout(self)
		self.pB = QtWidgets.QProgressBar(self)
		self.pB.setRange(0,100)
		self.pB.setGeometry(30, 40, 700, 100)
		self.startButton = QtWidgets.QPushButton("Start",self)
		self.box.addWidget(self.pB)
		self.box.addWidget(self.startButton)
		self.setLayout(self.box)
		self.setGeometry(300, 300, 550, 100)
		self.setWindowTitle('Progress Bar')
		self.startButton.clicked.connect(self.onStart)

	def onStart(self):
		count = 0
		while count < 100:
			count += 1
			time.sleep(0.1)
			self.pB.setValue(count)



def main():
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowUIClass()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

main()