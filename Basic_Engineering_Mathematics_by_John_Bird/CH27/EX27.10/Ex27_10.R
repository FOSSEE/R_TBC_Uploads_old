#page no. 282
#problem 10
#formula used:  area of circle = pi*r^2
#               cicumference of circle = 2*pi*r

area_circle = function(r)
{
  return(pi*r^2)
}

radius_cir <- function(cir)
{
  r = cir/(2*pi)
  return(r)
}


#given:
circ = 60 # circumference of circle
r = radius_cir(circ)
area = area_circle(r) #area of circle
print(area)