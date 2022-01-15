from bottle import route, run, get, post, response, static_file, request
from CustomizedControlServer import *
import CustomizedControlServer
import time
# control rccar
@post('/motor')
def control_rccar():
    global leftpoint, rightpoint, rcount, lcount, srcount, slcount
    command = request.forms.get('command')
    print(command)
    if command == "AUTO":
        auto()
        leftpoint = 0
        rightpoint = 0
        rcount = 0
        lcount = 0
        srcount = 0
        slcount = 0
    if customControlServer.OnOff == False:
        if command == "GO":
            forward()
        elif command == "LEFT":
            left()
        elif command == "STOP":
            stop()
        elif command == "RIGHT":
            right()
        elif command == "BACK":
            backward()
        elif command == "UP":
            speedUp()
        elif command == "DOWN":
            speedDown()
        elif command == "SLOWLEFT":
            slowLeft()
        elif command == "SLOWRIGHT":
            slowRight()
    return ''
@route('/')
def do_route():
    return static_file("index.html", root=".")

customControlServer.velocity = 0.35
def move_autocar(direction,state,speed):
    [leftval, rightval, lflag, lcount, rcount, leftpoint, rightpoint, cntlower, cntupper] = state
    if direction >= -4 and direction <= 3 and leftpoint == 0 and rightpoint == 0:
        runfront()
    elif direction < -4 or leftpoint != 0:
        [leftval, lflag, lcount, leftpoint, rightpoint] = left(state, speed)
    elif direction > 3 or rightpoint != 0:
        [rightval, rflag, rcount, leftpoint, rightpoint] = right(state, speed)
    return [leftval, rightval, lflag, lcount, rcount, leftpoint, rightpoint]

def move_onetimeLeft(speed):
    customControlServer.forward()
    time.sleep(0.25)
    customControlServer.left(speed)
    time.sleep(0.1)
    customControlServer.stop()

def move_onetimeRight(speed):
    customControlServer.forward()
    time.sleep(0.1)
    customControlServer.right(speed)
    time.sleep(0.1)
    customControlServer.stop()

def runfront():
    customControlServer.velocity = customControlServer.velocity + 0.2
    customControlServer.forward()
    time.sleep(0.1)
    customControlServer.velocity = customControlServer.velocity - 0.2
    customControlServer.forward()
    print("go")

def runLeft(state,speed,direction):
    [leftval,rightval,lflag, lcount, rcount, leftpoint, rightpoint, cntlower, cntupper] = state
    lcount += 1
    if (lcount >= 2):
        if leftpoint == 0:
            customControlServer.stop()
            leftpoint = 1
        if leftpoint == 1:
            if cntlower == 0:
                print("left1")
                move_onetimeLeft(speed[0])
                a = cntupper
            elif cntlower != 0 or cntupper >leftval + 2:
                lcount += 1
                if lcount >= 2:
                    leftpoint = 0
                    rightpoint = 0
                    lcount = 0
                    lflag = 1
                else:
                    print("left3")
                    move_onetimeLeft(speed[0])
            elif direction > 3:
                leftpoint = 1
                rightpoint = 0
            else:
                print("left2")
                move_onetimeLeft(speed[0])
    return [leftval,lflag, lcount, leftpoint,rightpoint]
def runRight(state,speed,direction):
    [leftval,rightval,lflag, lcount, rcount, leftpoint, rightpoint, cntlower, cntupper] = state
    rcount += 1
    if (rcount >= 4):
        if rightpoint == 0:
            customControlServer.stop()
            rightpoint = 1
        if rightpoint == 1:
            if cntupper == 0:
                print("right1")
                move_onetimeRight(speed[0])
                b = cntlower
            elif cntupper != 0 or cntlower > rightval + 2:
                rcount = rcount + 1
                if rcount >= 2:
                    leftpoint = 0
                    rightpoint = 0
                    rcount = 0
                    rflag = 1
                else:
                    print("right3")
                    move_onetimeRight(speed[0])
            elif direction < -3:
                leftpoint = 0
                rightpoint = 1
            else:
                print("right2")
                move_onetimeRight(speed[0])
    return [rightval,rflag, rcount, leftpoint,rightpoint]
