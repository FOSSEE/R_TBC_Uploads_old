a=1
b=3000.001
c=3
#the roots of the quadratic equation x^2+3000.001*x+3=0 are found as
D=(b^2)-4*a*c
x1=(-b+(D^0.5))/(2*a)
x2=(-b-(D^0.5))/(2*a)
cat("The roots of the quadratic equation (x^2)+(3000.001*x)+3=0 are = ",x1,"and",x2)