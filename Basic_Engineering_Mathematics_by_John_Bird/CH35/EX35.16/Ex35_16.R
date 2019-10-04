#page no.379
#problem 16
#load package ----->deriv
library(Deriv)
#funtion used: D()-------> derivative function w.r.t variable
#given:
y=expression(7*sin(2*x) - 3*cos(4*x)) #sin and cos function derivatives

D(y,'x') # differentiation w.r.t 'x'