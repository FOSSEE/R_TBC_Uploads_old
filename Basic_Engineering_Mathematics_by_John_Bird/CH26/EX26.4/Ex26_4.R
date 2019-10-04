#page no. 269
#problem 4

#formula used : area of parallelogram = base * perpendicular height
#given:

l = 16 #one side of parallelogram
b = 9 #second side of parallelogram
L = 21 # distance from one point to another point (horizontally)
base = L-l #base of right angle triangle
hypo = b # hypotenuse of right angle triangle
h = sqrt(hypo^2 - base^2)


area_para <- function(x,y)  #area of parallelogram
{
  a = x*y
  return(a)
}

print(area_para(l,h))