# Machine-Learning-models-for-gross-motor-skills
software engineering project

## App:
### Demo:
https://youtu.be/tnGhFdTVE-g (the export function was enhanced to allow you to select an exporting type and path)

### Requirements:
#### The tools and libraries you need to install to run this App:
* Python 3.7(the tested version was Python 3.7.7) or other versions of Python(here are knowing issues with Python 3.8)
* TensorFlow for Python 3.7(you may want to setup your GPU to improve the performance of the App, here's a link showing you how to do that https://www.tensorflow.org/install/gpu)

### Usage:
0. Run gui.py, it takes a little longer time when the program was loaded for the first time.
1. Import **uncompressed** skeleton.json files into the App(if you imported a folder then it will search for all the skeleton.json files inside it), and choose the file or folder.
2. Click 'Analyze' button
3. Waiting for the progress to end.
4. See the results, select single motion to examine it as 3D animation or export all the results as CSV or JSON files.

### FAQs:
* When I opened the codes with some IDEs it used some red lines to tell me that some libraries could not be found?
  
       They are totally fine and when the program starts to run, those errors will be gone.
         
* I was using another version of python, how to switch to the Python 3.7 to run the program?
  
       Python allows you to install mutilple versions, just simply download a Python 3.7.7 and install it.
       To run a program with the specific version of Python, use `py -3.7 gui.py` to run it with Python 3.7.
         
* I installed TensorFlow before but when I ran this program with Python 3.7 it told me it could not find TensorFlow?
  
       Python doesn't share libraries among different versions, you need to install the TensorFlow for Python 3.7 as well.
       To install a library with pip for a specific version of Python, use `pip3.7 install tensorflow` to install TensorFlow for Python 3.7.


