#page no. 282
#problem 15
#formula used: area of sector = (1/2)*r^2*theta
angle = function(r,area)
{theta = (area*2)/r^2}
rad2deg <- function(rad) {return((rad * 180) / (pi))} #radian to degree
#given:
r = 1.8 #radius of garden sprayer distance
area = 2.5 # area of sector sprayed
theta = angle(r,area) # angle in radian
print(theta)
degree = rad2deg(theta) #angle in degree
print(degree)
