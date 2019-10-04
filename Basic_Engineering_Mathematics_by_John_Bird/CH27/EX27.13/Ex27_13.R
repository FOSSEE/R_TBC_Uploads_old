#page no. 282
#problem 13
# formula used: minor arc = r*theta
#               circumference of circle = 2*pi*r
#               major arc = circumference - minor arc

deg2rad <- function(deg) {return((deg * pi) / (180))} #degree to radian

peri_circle = function(r)
{
  return(pi*r*2)
}

arc_length = function(r,theta)
{return(r*theta)}

#given:
r = 8.4# radius of circle
theta = 125 # angle in degree
rad = deg2rad(theta) #angle in radian
#part(a)
minor_arc = arc_length(r,rad)
print(minor_arc)
#part(b)
major_arc = peri_circle(r) - minor_arc
print(major_arc)

