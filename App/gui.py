import sys
sys.path.insert(0,'./lib')
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QListWidgetItem, QPushButton, QFileDialog, QWidget, QVBoxLayout
from mainFrame import Ui_MainWindow, links, linkNames
import time
from fileReader import FileReader
from ModelTesting import Testing
from ParseData import Parser
import tensorflow as tf
from threeD_Rendering import Viewport
from threeD_Rendering import Mesh
import pickle
import pygame
import ctypes

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


    # slot
    def exportSlot(self):
    	output = self.results
    	if len(output) > 0:
            self.fileReader.writeDoc(output,self.path)
            self.message.setText("Successfully exported.")

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
        self.message.setText("")
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
                text = result[0] + " is " + result[1] + "% " + result[2]
                self.textbox.addItem(text)
        self.showProgress.close()

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

            v = Viewport((disable_mouse)=True,w=700,h=600)
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
            self.message.setText("No motion seleted.")
        except:
            pass
        



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



def main():
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = MainWindowUIClass()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

main()