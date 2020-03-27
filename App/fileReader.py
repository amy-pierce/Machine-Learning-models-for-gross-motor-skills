import os
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
    
    def writeDoc(self, text, path, directory):
        success = False
        i = 0
        originalPath = path
        while(not success):
            fileName = path.split('.')[1][1:] + ".csv"
            if self.isValidDirectory( fileName, directory ):
                file = open( directory +"\\"+ fileName, 'w' )
                file.write("File,Confidence,Motion\n")
                for line in text:
                    result = line[0] + "," + line[1] + "," + line[2] + "\n"
                    file.write(result)
                file.close()
                success = True
            i = i+1
            path = originalPath + "(" + str(i) +")"