#page no. 272
#problem 10
# formula used : #formula used : area of rectangle = l*b
#given:
l = 6 # length of building
b = 8#breadth of building

###triangle on top
base = 8
base_right = base/2 #base of right angle triangle
hypo = 5
height = sqrt(hypo^2 - (base_right^2))

area_rect <- function(x,y)  #area of rectangle
{
  a = x*y
  return(a)
}

area_triangle <- function(x,y)  #area of right angle triangle 
{
  a = (x*y)/2
  return(a)
}

area_building = area_rect(l,b) + area_triangle(base,height)
print(area_building)