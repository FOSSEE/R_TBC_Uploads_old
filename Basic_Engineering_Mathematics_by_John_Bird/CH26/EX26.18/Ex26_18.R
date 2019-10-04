#page no. 275
#problem 18
# formula used : area of regular hexagon =6*((1/2)*base*height)
#                                         6 times area of triangle

area_triangle = function(b,h)
{
  return((b*h)/2)
}
#given:
base = 8
b = base/2 #base of right angle triangle
hypo = base #hypotenuse of right angle triangle
h = sqrt(hypo^2 - b^2)

area_hexagon=6*area_triangle(base,h)
print(area_hexagon)
