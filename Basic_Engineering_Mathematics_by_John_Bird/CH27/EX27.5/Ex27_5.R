#page no. 280
#problem 5
#formula used: 

deg2rad <- function(deg) {return((deg * pi) / (180))} #degree to radian 

deg2rad_min = function(angle,min) #degree to radian while min are given
{
  deg = ((angle*60)+min)/60
  return(deg2rad(deg))
}
#part(a)
  #given:
  d1 = 125 # angle in degree 
  print(deg2rad(d1))


#part(b)
  #given:
  d2_angle = 69 # angle in degree and minutes
  d2_min = 47   # 69 degree and 47 minutes
  print(deg2rad_min(d2_angle,d2_min))