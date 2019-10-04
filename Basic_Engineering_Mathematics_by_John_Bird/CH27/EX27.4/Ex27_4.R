#page no. 279
#problem 4
#formula used: pythagoras theorem 

hypotenuse <- function(b,p)
{
  h = sqrt(b^2+p^2)
  return(h)
}

#given:
ab = 150 # tangent to circle 
         # act as perpendicular height
 r = 40     #radius of circle(base) 
 ao = hypotenuse(r,ab)
 print(ao)
      