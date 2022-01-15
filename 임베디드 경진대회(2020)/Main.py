# -*- coding: utf-8 -*
import sys
import math
import cv2
import numpy as np
import time
import LidarFunction
import PartInit as p
import MotorControlByTrafficLight as TL
import LocationSetting as AUTO
t2 = None
#from bottle import route, run, get, post, response, static_file, request
from CustomizedControlServer import *
import CustomizedControlServer
import MotorControl as mv
rcount = 0
lcount = 0
srcount = 0
slcount = 0
lrspeed = 1
slrspeed = 0.2
leftpoint = 0
rightpoint = 0
lflag = 0
rflag = 0
leftval = 0
rightval = 0

COLUMN = 640
ROW = 360
direction = None
flag = 0
OnOff = 1
if __name__ == "__main__":
    # cap = cv2.VideoCapture(0) 
    cap2 = cv2.VideoCapture(-1)  # maybe this is piCam
    cap = cv2.VideoCapture(1)  # maybe this is webCam
    zodoModule = p.def0(name="0")
    liderModule = p.def1(name="1")
    autoModule = p.def2(name="2")
    zodoModule.start()
    liderModule.start()
    autoModule.start()
    previous = 0
    TrafficLight = False  

    t1 = time.time()
    while (True):
        if t2 == None:
            ret, src = cap.read()  # src는 프레임임(원본이미지)
            ret2, src2 = cap2.read()  # piCam is cap2 we gonna use this to trafficLight
            src = cv2.resize(src, (640, 360))  # 가로640 세로 360
            src2 = cv2.resize(src2, (640, 360))  # 가로640 세로 360
            TrafficLight = TL.TrafficLight(ret2,src2,TrafficLight)
            if customControlServer.OnOff == True:
                if (TrafficLight == True or lider.liderflag == 1):
                    stopflag = 1
                else:
                    stopflag = 0
            t2 = time.time()
            if t2 - t1 >= 0.01:
            #==============setlocation부==========================================
                [lines,lines_img] = AUTO.writeline(src, ret)
                [result,ListLowerZero, ListUpperZero] = AUTO.editline(lines, lines_img)
                if result[0] == 1:
                    t1 = time.time() - 0.2
                    t2 = time.time()
                xt = result[1]
                yt = result[2]
                if xt == -100001 and yt == -100001:
                    direction = previous
                car = p.motorAction(xt, yt)
                direction = car.whereControl()
                if len(ListLowerZero[0]) == 0:
                    leftpoint = 2
                    lflag = 0
                elif len(ListUpperZero[0]) == 0:
                    rightpoint = 2
                    rflag = 0
                state = [leftval, rightval, lflag, lcount, rcount, leftpoint, rightpoint, len(ListLowerZero[0]), len(ListUpperZero[0])]
                speed = [lrspeed, slrspeed]
                if stopflag == 1:
                    customControlServer.stop()
                else:
                    [leftval, rightval, lflag, lcount, rcount, leftpoint, rightpoint] = mv.move_autocar(direction,state,speed)

                print('sinhodong =' + str(TrafficLight) + 'rider' + str(lider.liderflag))
                print("leftpoint" + len(ListUpperZero[0]) + "rightpoint" + len(ListLowerZero[0]))
                t1 = time.time()
                t2 = time.time()
                cv2.imshow("ROI", lines_img)
                # cv2.imshow('cdstP',cdstP)
                #cv2.imshow('source', mask)
                previous = direction
            else:
                t2 = time.time()
        if previous == 1 and customControlServer.OnOff == False:
            cv2.destroyWindow("ROI")
            cv2.destroyWindow('source')
            previous = 0
        #cv2.imshow('Traffic_Light_ROI', Traffic_Light_ROI)
        cv2.imshow('video', src)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    cap.release()
    cv2.destroyAllWindows()
