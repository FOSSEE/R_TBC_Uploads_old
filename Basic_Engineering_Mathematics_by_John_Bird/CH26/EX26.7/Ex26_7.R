#page no. 271
#problem 7
# formula used : #formula used : area of rectangle = l*b
#load package ----->measurments
library(measurements)
#given:
l = 820 #length of rectangle in mm
b = 400 #breadth of rectangle in mm
area_rect <- function(x,y)  #area of rectangle
{
  a = x*y
  return(a)
}
area = area_rect(l,b)
#part(a)
cat("area in mm^2:",area)

#part(b)
cat("area in cm^2:",conv_unit(area,'mm2','cm2'))

#part(c)
cat("area in m^2:",conv_unit(area,'mm2','m2'))