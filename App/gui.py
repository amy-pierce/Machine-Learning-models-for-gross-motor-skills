import sys
sys.path.insert(0,'./lib')
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton, QFileDialog, QWidget, QVBoxLayout, QMessageBox, QComboBox
from mainFrame import Ui_MainWindow, links, linkNames
import time
from pandas import pandas as pd
from fileReader import FileReader
from ModelTesting import Testing
from ParseData import Parser
import tensorflow as tf
from threeD_Rendering import Viewport
from threeD_Rendering import Mesh
import pickle
import pygame

messageType = -1

class MainWindowUIClass(Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.fileReader = FileReader()
        self.hasOutput = False
             
    def setupUi(self, MW):
        super().setupUi( MW )

    def refreshAll(self):
        selectedFileName = self.fileReader.getFileName()
        links.append(selectedFileName)
        self.lstbox.index += 1
        onlyFileName = selectedFileName.split("/")[-1]
        linkNames.append(str(self.lstbox.index)+". "+onlyFileName)
        self.lstbox.addItem(str(self.lstbox.index)+". "+onlyFileName)


    # slot
    def exportSlot(self):
        if self.hasOutput:
            self.exportSelection = exportSelectWidget(self)
            self.exportSelection.show()
        else:
            global messageType
            messageType = 2
            self.systemMessage = PopUpMessageBox()

    # slot
    def importFileSlot(self):
        options = QtWidgets.QFileDialog.Options()
        fileName, _ = QtWidgets.QFileDialog.getOpenFileName(
                        None,
                        "File Broswer",
                        "",
                        "JSON Files (*.json)",
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
        self.message.setText("")
        global messageType
        self.path = QListWidgetItem(self.lstbox.currentItem()).text()
        self.showProgress = PopUpProgressBar()
        if self.path != '':
            self.showProgress.show()
            index = linkNames.index(self.path)
            self.parseData = Parser(str(links[index]))
            pickleName = self.parseData.parse(self.showProgress)
            self.testing = Testing(pickleName)
            self.results = self.testing.analyse(self.showProgress)
            self.outputResult = list()
            for result in self.results:
                self.outputResult.append(result[:-1])
            self.dataFrame = pd.DataFrame(self.outputResult,columns=['File','Confidence','Motion'])
            print(self.dataFrame)
            self.text = ""
            for result in self.results:
                self.text = result[0] + " is " + result[1] + "% " + result[2]
                self.textbox.addItem(self.text)
            self.showProgress.close()
            if self.text == "":
                messageType = 1
                self.systemMessage = PopUpMessageBox()
            else:
                self.hasOutput = True
        else:
            messageType = 2
            self.systemMessage = PopUpMessageBox()

    # slot
    def animationSlot(self):
        try:
            self.message.setText("")
            self.selectedAnimation = QListWidgetItem(self.textbox.currentItem()).text().split(" is")[0]
            for result in self.results:
                if result[0] == self.selectedAnimation:
                    self.selectedAnimation = result[3]
                    break
            motion = pickle.load(open(self.selectedAnimation,"rb"))

            v = Viewport(disable_mouse=True,w=700,h=600)
            v.objects.clear()
            v.add_object(Mesh(name="cube",primitive_type="skeleton",pos=[-2.5,0,-5],color=(255,0,0),segments=10))
            frame = 0
            frames = 0
            while True:
                v.objects[0].set_skeleton_state(motion[frame%len(motion)],0,0,0)
                v.update(draw_f=True,draw_e=True,draw_v=True)
                if frames%7 == 0:
                    frame += 1
                frames += 1
        
        except(FileNotFoundError,IOError,AttributeError):
            global messageType
            messageType = 3
            self.systemMessage = PopUpMessageBox()
        except:
            pass
        
class PopUpMessageBox(QWidget):
    def __init__(self, parent=None):
        super(PopUpMessageBox, self).__init__(parent)
        messages = ["Export Successfully!","Input Type Error!","No file chosen.","No motion seleted."]
        icons = [QMessageBox.Information,QMessageBox.Critical,QMessageBox.Warning,QMessageBox.Warning]
        global messageType
        self.msg = messages[messageType]
        self.mbox = QtWidgets.QMessageBox(self)
        self.mbox.setWindowTitle("System Message")
        self.mbox.setText(self.msg)
        self.mbox.setIcon(icons[messageType])

        x = self.mbox.exec_()
        
class PopUpProgressBar(QWidget):
    def __init__(self,parent=None):
        super(PopUpProgressBar, self).__init__(parent)
        self.box = QtWidgets.QVBoxLayout(self)
        self.pB = QtWidgets.QProgressBar(self)
        self.label = QtWidgets.QLabel("Didn't select anything, please select the files you imported",self)
        self.label.setGeometry(12,0,700,50)
        self.time = QtWidgets.QLabel("Time Left: Calculating",self)
        self.time.setGeometry(280,50,250,50)
        self.pB.setRange(0,100)
        self.pB.setGeometry(30, 40, 700, 100)
        self.box.addWidget(self.pB)
        self.setLayout(self.box)
        self.setGeometry(300, 300, 550, 100)
        self.setWindowTitle('Progress')

class exportSelectWidget(QWidget):
    def __init__(self,gui):
        super().__init__()
        self.gui = gui
        listExport = ['csv', 'json']

        self.text = QtWidgets.QLabel("Please select the type of file you would like to export:",self)
        self.text.setGeometry(50,20,400,35)
        
        self.comboBox = QComboBox(self)
        self.comboBox.setGeometry(50, 70, 400, 35)
        self.comboBox.addItems(listExport)

        self.btn = QPushButton('Next', self)
        self.btn.setGeometry(180, 140, 120, 35)
        self.btn.clicked.connect(self.select)

        self.setWindowTitle('Select export type')

    def select(self):
        print((self.comboBox.currentText(), self.comboBox.currentIndex()))
        getExistingDirectory = QFileDialog.getExistingDirectory
        fileName = getExistingDirectory(None,
                                        'Folder Broswer',
                                        "")
        if len(self.gui.dataFrame) > 0 and fileName != "":
            self.gui.fileReader.writeDoc(self.gui.dataFrame, self.gui.path, fileName,self.comboBox.currentText())
            global messageType
            messageType = 0
            self.gui.systemMessage = PopUpMessageBox()
        self.close()

def main():
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowUIClass()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

main()