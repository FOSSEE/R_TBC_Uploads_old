#page no. 279
#problem 3
#formula used: circumference of circle = 2*pi*r

radius_cir <- function(cir)
{
  r = cir/(2*pi)
  return(r)
}

#given:
circ = 112
radius = radius_cir(circ)
print(radius)