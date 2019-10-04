#page no. 274
#problem 14
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
r = 6 #radius of circle
theta = 50 # angle subtended at center
print(area_sector(theta,r))