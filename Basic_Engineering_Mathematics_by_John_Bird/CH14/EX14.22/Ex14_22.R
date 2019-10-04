#page no. 129
#problem 18

#function:


roots <- function(a, b, c){
  
  pos_root <- ((-b) + sqrt((b^2) - 4*a*c)) / (2*a)
  
  neg_root <- ((-b) - sqrt((b^2) - 4*a*c)) / (2*a)
  
  return(pos_root) #length can not be negative, so take +ve root
  
  print(neg_root)
  
}

#given: 
area = 23.6 #area of rectangle
#l = x  #let lenght of rectangle be x
#b = x -3.10 #  breadth is 3.10 shorter than length
#eq. formed --->area = l*b
#               23.6 = x*(x-3.10)
#               23.6 = x^2-3.1x 
#               x^2-3.1x-23.6=0
a = 1
b = -3.1
c = -23.6
x12 = roots(a,b,c) #roots of quadratic equation
l = x12
b = x12 - 3.10
print(l) #length of rectangle
print(b) #breadth of rectangle
