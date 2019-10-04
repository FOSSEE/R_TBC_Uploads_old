#page no. 282
#problem 9
#formula used:  area of circle = pi*r^2

area_circle = function(r)
{
  return(pi*r^2)
}

#given:
dia = 35.0 #diameter of circle
r = dia/2 #radius of circle
area = area_circle(r) #area of circle
print(area)