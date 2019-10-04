#page no.377
#problem 12
#load package ----->deriv
library(Deriv)
#funtion used: D()-------> derivative function w.r.t variable
#given:
y=expression((2*x^3/5)-(4/x^3) + (4*sqrt(x^5))+7)

D(y,'x') # differentiation w.r.t 'x'