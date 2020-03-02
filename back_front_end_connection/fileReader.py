class FileReader:
    def __init__(self):
        self.fileName = None
        self.fileContent = ""

    def isValid(self, fileName):
        try:
            file = open( fileName, 'r' )
            file.close()
            return False
        except:
            return True

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
    
    def writeDoc(self, text, path):
        success = False
        i = 0
        while(not success):
            fileName = path.split('.')[0] + ".csv"
            if self.isValid( fileName ):
                file = open( fileName, 'w' )
                file.write("File,Confidence,Motion\n")
                for line in text:
                    result = line[0] + "," + line[1] + "," + line[2] + "\n"
                    file.write( result )
                file.close()
                success = True
            i = i+1
            path = path + "(" + str(i) +")"