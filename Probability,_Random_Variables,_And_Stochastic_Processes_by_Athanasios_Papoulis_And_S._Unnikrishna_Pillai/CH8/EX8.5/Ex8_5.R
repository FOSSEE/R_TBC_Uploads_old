#page no. 312
#example 8-5

x_bar=6

cat("(z^2)/n=0.0625 then the equation (8-19) yields the quadratic ")
cat("(lambda-6)^2=0.0625lambda")

#from the equation and comparing coefficient with ax^2+bx+c=0 
a=1
b=-12.0625
c=36

#finding solution of the quadratic equation

l1=(-b-sqrt(b^2 - 4*a*c))/(2*a)
l2=(-b+sqrt(b^2 - 4*a*c))/(2*a)

cat("We can thus clain with confidence coefficient 0.95 that ",l1,"< lambda <",l2)