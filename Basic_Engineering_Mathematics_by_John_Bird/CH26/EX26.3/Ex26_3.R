#page no.269
#problem 3 
#formula used : area of rectangle = l*b
#               perimeter of rectangle = 2*(l+b)
#given:

l = 7 #length of rectangle
b = 4.5 #breadth of rectangle
area_rect <- function(x,y)  #area of rectangle
{
  a = x*y
  return(a)
}

peri_rect <- function(x,y) #perimeter of rectangle
{
  return(p = 2*(l+b))
  
}

print(area_rect(l,b))

print(peri_rect(l,b))
