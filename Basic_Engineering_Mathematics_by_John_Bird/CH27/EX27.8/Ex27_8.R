#page no. 281
#problem 8
#formula used: area of semi circle = area of circle/2

area_circle = function(r)
{
  return(pi*r^2)
}

#given:
r = 14.63 #radius of semicircle
area = (1/2)*area_circle(r) #area of semicircle
print(area)