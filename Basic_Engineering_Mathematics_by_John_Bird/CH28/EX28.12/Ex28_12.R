#page no.295
#Load package -----> measurments
#formula used: volume of cone = (pi*r^2*h)/3

r = conv_unit(30, 'mm', 'cm') # radius of cone (mm to cm)
h = conv_unit(80, 'mm', 'cm') # height of cone (mm to cm)
volume_of_cone = (pi*r^2*h)/3
print(volume_of_cone)