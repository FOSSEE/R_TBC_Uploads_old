#page no. 274
#problem 15
# formula used : area of sector=(theta/360)*area of circle

area_circle = function(r)
{
  return(pi*r^2)
}

area_sector<- function(theta,r)
{
  a = (theta/360)*area_circle(r)
}

#given:
dia = 80 #diameter of circle
r = dia/2 #radius of circle
theta = 107 # angle subtended at center(107 degree 42 minutes)
print(area_sector(theta,r))