#!/bin/python
# Pin: 29	Service: cups

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(29,GPIO.OUT)

GPIO.output(29,1)
print ("LED cups on - .py")
time.sleep(2)

GPIO.cleanup()
