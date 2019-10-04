#page no. 142
#problem 3
#function used: exp()
#formula used: v = V*exp(-t/CR)
#load package ------>measurements
library(measurements)
#given:

V = 300 # volts
t = 50 # time in milliseconds
t1 = conv_unit(t,'msec','sec') #time in seconds
c = 10 #in microFarad
c1 = conv_unit(c,'um','m')
R = 47 # kilo_ohms
R1 = conv_unit(R,'km','m')

v =V*exp(-t1/(c1*R1))
print(v)