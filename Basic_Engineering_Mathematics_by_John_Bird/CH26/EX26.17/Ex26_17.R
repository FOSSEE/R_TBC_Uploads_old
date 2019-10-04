#page no. 275
#problem 17
# formula used : area of regular octagon =8*((1/2)*base*height)
#                                          8 times area of triangle

area_triangle = function(b,h)
{
  return((b*h)/2)
}
#given:
base = 5
H = 12 # total height across the flat
h = H/2
area_octagon=8*area_triangle(base,h)
print(area_octagon)
