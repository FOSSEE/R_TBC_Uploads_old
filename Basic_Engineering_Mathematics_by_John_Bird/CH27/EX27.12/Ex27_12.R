#page no. 282
#problem 12
#formula used:  length of arc = r*theta

arc_radius = function(s,theta)
{return(s/theta)}

peri_circle = function(r)
{
  return(pi*r*2)
}

#given:

s = 4.75 #arc of length
theta = 0.91 # angle in radian
r = arc_radius(s,theta)
dia = 2*r
print(dia) # diameter of circle

print(peri_circle(r)) # circumference of circle