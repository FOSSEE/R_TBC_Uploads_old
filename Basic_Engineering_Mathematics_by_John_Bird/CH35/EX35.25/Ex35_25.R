#page no.382
#problem 25
#load package ----->deriv
library(Deriv)
#funtion used: D()-------> derivative function w.r.t variable
#given:
y=expression(2*x^3/3 - 4/x^2 + 1/2*x -sqrt(x)) #sin and cos function derivatives

D1=D(y,'x') # 1st order differentiation w.r.t 'x'
D2=D(D1,'x')# 2nd order differentiation w.r.t 'x'
print(D2)