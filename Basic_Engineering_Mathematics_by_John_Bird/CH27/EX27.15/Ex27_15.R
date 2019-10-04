#page no. 282
#problem 15
#formula used: area of sector = (1/2)*r^2*theta

deg2rad <- function(deg)#degree to radian 
  {
  return((deg * pi) / (180))
  } 


area_sector<- function(theta,r)
{
  a = (1/2)*r^2*theta
}
#given:
r = 55 #radius of stadium
theta = 45 #angle in degree
rad = deg2rad(theta) #angle in radian
area = area_sector(rad,r)  # maximum area
print(area) 