#page no .225
#problem 9
# conversion minutes to degree
angle = function(x,y)
{
  return(((x*60)+y)/60)
}
#given:
angle_degree = 62 # angle in degree
angle_min = 12 # angle in min

deg = angle(angle_degree,angle_min)

cosQ = cos(deg)
cat("6cosQ:",6*cosQ)
