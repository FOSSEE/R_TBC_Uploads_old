#page no. 271
#problem 6
#formula used: area of trapezium = ((sum of parallel sides)*perpendicular distance)/2

#given:
l1 = 27.4 #length of one parallel side
l2 = 8.6 # length of 2nd parallel side
h = 5.5 # perpendicular distance b/w two parallel sides
area_trapezium <- function(x,y,z)  #area of trapezium 
{
  a = ((x+y)*z)/2
  return(a)
}

print(area_trapezium(l1,l2,h))
