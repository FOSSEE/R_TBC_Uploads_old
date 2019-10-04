#page no. 131
#problem 26
# funtion:
roots <- function(a, b, c){
  
  pos_root <- ((-b) + sqrt((b^2) - 4*a*c)) / (2*a)
  
  neg_root <- ((-b) - sqrt((b^2) - 4*a*c)) / (2*a)
  
  return(pos_root) #radius can not be negative, so take +ve root
  
  print(neg_root)
  
}
# given: area of cone = (pi*r*l) + pi*r^2

area = 486.2 #area of cone
l = 15.3 # slant height of cone
# after placing values we get eq.
# r^2+15.3r-482.2/pi

a = 1
b = 15.3
c = -482.2/pi
r = roots(a,b,c)
dia = 2*r #diameter of cone base
print(dia)