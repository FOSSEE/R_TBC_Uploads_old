library(deSolve)

predprey <- function(t,y,parms) {
  a = 1.2*y[1]-0.6*y[1]*y[2]
  b = -0.8*y[2]+0.3*y[1]*y[2]
  list(c(a,b))
}
t=seq(0,20,0.1)
y0<-c(2, 1)
sol=ode(y = y0,parms = NULL,times = t,func = predprey)
sol<-data.frame(sol)
plot(t,sol$X1,main = "y vs t", xlab = "t",ylab = "y")
lines(t,sol$X1)
lines(t,sol$X2)

plot(sol$X1,sol$X2,main = "space-space plot (y1 vs y2)", xlab = "y1",ylab = "y2")
lines(sol$X1,sol$X2)