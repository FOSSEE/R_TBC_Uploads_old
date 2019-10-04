#page no.376
#problem 9
#load package ----->deriv
library(Deriv)
#funtion used: D()-------> derivative function w.r.t variable
#given:
y=expression(((2*x^4)/3)-(4/x^3)+9)

D(y,'x') # differentiation w.r.t 'x'