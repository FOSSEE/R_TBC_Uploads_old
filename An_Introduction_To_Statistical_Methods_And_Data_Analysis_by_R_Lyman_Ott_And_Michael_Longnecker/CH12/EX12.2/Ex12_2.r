# model : y = b0 + b1x1 + b2x2 + b3x3 +e
#x1 = 1 if system 2 is used, x1 = 0 otherwise
#x2 = 1 if system 3 is used, x2 = 0 otherwise
#x3 = 1 if system 4 is used, x3 = 0 otherwise
u1=7
u2=9
u3=6
u4=15
b0=u1
b1=u2-u1
b2=u3-u1
b3=u4-u1
print(b0)
print(b1)
print(b2)
print(b3) 