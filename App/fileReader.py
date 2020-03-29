import os
from pandas import pandas as pd
class FileReader:
    def __init__(self):
        self.fileName = None
        self.fileContent = ""

    def isValid(self, fileName):
        try:
            file = open( "\\"+ fileName, 'r' )
            file.close()
            return False
        except:
            return True
    
    def isValidDirectory(self, fileName, directory):
        try:
            file = open( directory + "\\"+ fileName, 'r' )
            file.close()
            return False
        except:
            return True

    def isDirectory(self, fileName):
        return os.path.isdir(fileName) 

    def setFileName(self, fileName):
        if self.isValid( fileName ) and not self.isDirectory(fileName):
            self.fileName = fileName
            self.fileContents = open( fileName, 'r' ).read()
        elif self.isDirectory(fileName):
            self.fileName = fileName
        else:
            self.fileContents = ""
            self.fileName = ""
            
    def getFileName(self):
        return self.fileName

    def getFileContents(self):
        return self.fileContents
    
    def writeDoc(self, dataframe, path, directory, fileType):
        success = False
        i = 0
        originalPath = path
        while(not success):
            if(fileType == 'csv'):
                fileName = path.split('.')[1][1:] + ".csv"
            elif(fileType == 'json'):
                fileName = path.split('.')[1][1:] + ".json"
            if self.isValidDirectory( fileName, directory ):
                if(fileType == 'csv'):
                    dataframe.to_csv(directory +"\\"+ fileName,index = False, header = True)
                elif(fileType == 'json'):
                    dataframe.to_json(directory +"\\"+ fileName, orient='records')
                success = True
            i = i+1
            path = originalPath + "(" + str(i) +")"