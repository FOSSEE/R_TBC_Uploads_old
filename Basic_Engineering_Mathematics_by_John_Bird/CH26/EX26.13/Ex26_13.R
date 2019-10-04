#page no.273
#problem 13
#formula used: area of circle = pi*r^2

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
circ = 70 #circumference of circle
r = radius_cir(circ) #radius of circle
print(area_circle(r))