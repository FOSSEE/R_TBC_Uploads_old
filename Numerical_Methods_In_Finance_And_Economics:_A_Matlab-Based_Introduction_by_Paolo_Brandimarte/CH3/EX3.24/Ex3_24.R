require(pracma)
f <- function(x) x^3*exp(-x^2)
vx<-seq(-4,4,.05)
plot(vx,f(vx))
lines(vx,f(vx))
fsolve(f,1)
fsolve(f,2)

#fsolve answers defer from matlab (book)