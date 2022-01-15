import threading
import LightControlByLux
import LidarFunction
from bottle import route, run, get, post, response, static_file, request
from CustomizedControlServer import *
import CustomizedControlServer
class motorAction:
    def __init__(self, target, index):
        self.state = target
        if index > 180:
            self.reverse = 1
        else:
            self.reverse = -1

    def whereControl(self):
        where = 320 - self.state
        lev = int(where) / 30 
        # print(lev)
        level = self.reverse * round(lev)
        print('xt =' + str(self.state) + ' lev = ' + str(level) + 'yt = ' + str(yt) + 'self.reverse = ' + str(
            self.reverse))
        return level

class def0(threading.Thread):
    def run(self):
        zodo.OnOffLED()


class def1(threading.Thread):
    def run(self):
        try:
            lider.getliderData()
        except KeyboardInterrupt:  # Ctrl+C
            if lider.ser != None:
                lider.ser.close()

class def2(threading.Thread):
    global flag, direction, yt
    point = 0

    def run(self):
        while 1:
            print(direction)
            initMotors()
            run(host='192.168.43.28', port=8080)
            time.sleep(0.1)
