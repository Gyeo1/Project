# -*- coding: utf-8 -*

import time
import RPi.GPIO as gpio
from gpiozero import Robot

ENA, ENB, ENC, END = 26, 0, 21, 8  # 37 27 40 29 pin

# GPIO PIN
IN1, IN2, IN3, IN4 = 19, 13, 6, 5  # 33 35 31 29 pin
IN5, IN6, IN7, IN8 = 20, 16, 1, 7  # 38 36 16 26 pin

robot1 = Robot(left=(IN1, IN2, ENA), right=(IN3, IN4, ENB))
robot2 = Robot(left=(IN5, IN6, ENC), right=(IN7, IN8, END))

global velocity
velocity = 0.35
flag = 0  # 1:전진 2:후진 3:좌회전 4:우회전 5:정지 6:자율주행 7:pwrL 8:pwrR
OnOff = False


def forward():
    global flag
    global velocity
    robot1.forward(speed=velocity)
    robot2.forward(speed=velocity)
    if (flag == 6):
        auto()
    else:
        flag = 1


def backward():
    global flag
    robot1.backward(speed=velocity)
    robot2.backward(speed=velocity)
    print(robot1.value)
    print(robot2.value)
    if (flag == 6):
        auto()
    else:
        flag = 2


def slowLeft(localVelocity):
    global flag
    localVelocity
    robot1.forward(curve_left=0.5)
    robot2.forward(curve_left=0.5)


def slowRight(localVelocity):
    global flag
    localVelocity
    robot1.forward(curve_right=0.5)
    robot2.forward(curve_right=0.5)


def left(localVelocity):
    global flag
    robot1.left(speed=localVelocity)
    robot2.left(speed=localVelocity)


def right(localVelocity):
    global flag
    robot1.right(speed=localVelocity)
    robot2.right(speed=localVelocity)


def stop():
    global flag
    robot1.stop()
    robot2.stop()
    if (flag == 6):
        auto()
    else:
        flag = 5


def speedUp():
    global flag
    global velocity
    if (velocity >= 0.9):
        velocity = 1
    else:
        velocity += 0.1
    if (flag == 1):
        forward()
    elif (flag == 2):
        backward()
    elif (flag == 3):
        left()
    elif (flag == 4):
        right()
    elif (flag == 5):
        stop()
    elif (flag == 6):
        auto()


def speedDown():
    global velocity
    if (velocity <= 0.1):
        velocity = 0.1
    else:
        velocity -= 0.1
    if (flag == 1):
        forward()
    elif (flag == 2):
        backward()
    elif (flag == 3):
        left()
    elif (flag == 4):
        right()
    elif (flag == 5):
        stop()
    elif (flag == 6):
        auto()


def auto():
    global OnOff
    OnOff = not OnOff
    print(OnOff)


def initMotors():
    gpio.setwarnings(False)
    gpio.setmode(gpio.BCM)

    # Pin Output Setup
    gpio.setup(IN1, gpio.OUT), gpio.setup(IN2, gpio.OUT), gpio.setup(IN3, gpio.OUT), gpio.setup(IN4, gpio.OUT)
    gpio.setup(IN5, gpio.OUT), gpio.setup(IN6, gpio.OUT), gpio.setup(IN7, gpio.OUT), gpio.setup(IN8, gpio.OUT)

    # Pin Initialization
    gpio.output(IN1, gpio.LOW), gpio.output(IN2, gpio.LOW), gpio.output(IN3, gpio.LOW), gpio.output(IN4, gpio.LOW)
    gpio.output(IN5, gpio.LOW), gpio.output(IN6, gpio.LOW), gpio.output(IN7, gpio.LOW), gpio.output(IN8, gpio.LOW)