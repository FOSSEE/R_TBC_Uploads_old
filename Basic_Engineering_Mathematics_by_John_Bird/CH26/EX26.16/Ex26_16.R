#page no. 274
#problem 16
#formula used: area of circle = pi*r^2

area_circle = function(r)
{
  return(pi*r^2)
}

#give:
D = 5.45 #diameter of outer circle
d = 2.25 #diameter of inner circle
R = D/2 #radius of outer circle
r = d/2 #radius of inner circle
area_shaft = area_circle(R) - area_circle(r)
print(area_shaft)