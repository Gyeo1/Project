# -*- coding: utf-8 -*
import serial
import time
import RPi.GPIO as GPIO

ser = serial.Serial("/dev/ttyAMA0", 115200)
liderflag = 0


def getliderData():
    global liderflag
    while True:
        try:
            count = ser.in_waiting
            if count > 8:
                recv = ser.read(9)
                ser.reset_input_buffer()
                if recv[0] == 'Y' and recv[1] == 'Y':  # 0x59 is 'Y'
                    low = int(recv[2].encode('hex'), 16)
                    high = int(recv[3].encode('hex'), 16)
                    distance = low + high * 256
                    time.sleep(0.1)
                    print('distance =' + str(distance))
                    if distance < 15:
                        liderflag = 1
                    else:
                        liderflag = 0
        except KeyboardInterrupt:
            print("stop lider")
            break


'''if __name__ == '__main__':
    try:
        if ser.is_open == False:
            ser.open()
        getliderData()
    except KeyboardInterrupt: # Ctrl+C
        if ser != None:
            ser.close()
'''
