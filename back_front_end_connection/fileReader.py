class FileReader:
    def __init__(self):
        self.fileName = None
        self.fileContent = ""

    def isValid(self, fileName):
        try: 
            file = open( fileName, 'r' )
            file.close()
            return True
        except:
            return False

    def setFileName(self, fileName):
        if self.isValid( fileName ):
            self.fileName = fileName
            self.fileContents = open( fileName, 'r' ).read()
        else:
            self.fileContents = ""
            self.fileName = ""
            
    def getFileName(self):
        return self.fileName

    def getFileContents(self):
        return self.fileContents
    
    def writeDoc(self, text):
        if self.isValid( self.fileName ):
            fileName = self.fileName.split('.')[0] + ".csv"
            file = open( fileName, 'w' )
            file.write( text )
            file.close()