library(pracma)
library(polynom)

fun <- function (x) (x^5 - (3.5*x^4) +(2.75*x^3) +(2.125*x^2) - (3.875*x) + 1.25)
fzero(f = fun,x =1)
Deriv::Deriv(f = fun,x = "x")

b<-c(1,0.5,-0.5)
a<-c(1,-3.5,2.75,2.125,-3.875,1.25)
answer = deconv(a,b)
d = answer$q
e = answer$r
polyroot(a)
polyroot(d)
conv(d,b)
a<-conv(d,b)
polyroot(a)