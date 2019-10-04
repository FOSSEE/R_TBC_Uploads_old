#page no. 221
#problem 1
#formula used: pythagoras theorem

hypo = function(base,perp)
{
  return(sqrt(base^2+perp^2))
}

#given:
p = 4 #perpendicular height of triangle
b = 3 #base of triangle
h = hypo(b,p) #hypotenuse of triangle
print(h)