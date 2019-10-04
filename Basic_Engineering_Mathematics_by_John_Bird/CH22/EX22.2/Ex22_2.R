#page no. 221
#problem 2
#formula used: pythagoras theorem


prep = function(hypo , base)
{
  return(sqrt(hypo^2 - base^2))
}


#given:
b = 5 #perpendicular height of triangle
h = 13 #hypotenuse of triangle
p = prep(h,b) #base of triangle
print(p)