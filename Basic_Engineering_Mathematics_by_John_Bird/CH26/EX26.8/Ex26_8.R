#page no. 271
#problem 8
# formula used : #formula used : area of rectangle = l*b
#given:
L = 100 #outer length of frame
B = 50 #outer breadth of frame
w = 4 # width of frame
l = L-2*w # inner length of frame
b = B -2*w #inner breadth of frame
area_rect <- function(x,y)  #area of rectangle
{
  a = x*y
  return(a)
}
area_frame = area_rect(L,B) - area_rect(l,b)
print(area_frame)
