f <- function(x,y,parms) {
  list(c(10*exp(-(x-2)^2/(2*(0.075^2)))-0.6*y))
}

x=seq(0,4,0.1)
y0=0.5
sol<-ode(y = y0,times = x,func = f,parms = NULL)
sol <-data.frame(sol)
plot(x,sol$X1,main ="y vs x",xlab = "x",ylab = "y")
lines(x,sol$X1)