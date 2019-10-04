#page no.376
#problem 11

#load package ----->deriv
library(Deriv)
#funtion used: D()-------> derivative function w.r.t variable
#given:
# (3*x^2-5*x)/2*x ----->((3*x)/2) - (5/2) # expression after solving 
y=expression(((3*x)/2) - (5/2))

result = D(y,'x') # differentiation w.r.t 'x'
print(result)