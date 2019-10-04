library(deSolve)
f <- function(x,y,parms) {
  a = y[2]
  b = -16.1*y[1]
  list(c(a,b))
}

x=seq(0,4,0.1)
y0<-c(0.1, 0)
sol<-ode(y = y0,times = x,func = f,parms = NULL)
sol <-data.frame(sol)
plot(c(0,4),c(-4,4),main = "y vs x",xlab = "x",ylab = "y",type = "n")
lines(x,sol$X2,col = "blue")
lines(x,sol$X1,col = "red")
#legend(x = 3,y = 0.3,legend = c("y1,y3","y2,y4"),lty=c(1,1))

g <- function(x,y,parms) {
  a = y[2]
  b = -16.1*sin(y[1])
  list(c(a,b))
}
sol<-ode(y = y0,times = x,func = g,parms = NULL)
sol <-data.frame(sol)
lines(c(0,4),c(-.5,.5),main = "y vs x",xlab = "x",ylab = "y",type = "n")
lines(x,sol$X2,col = "blue")
lines(x,sol$X1,col = "red")
#legend(x = 3,y = 0.3,legend = c("y1,y3","y2,y4"),lty=c(1,1))

pi = 3.1415927

y0<-c(pi/4, 0)
sol<-ode(y = y0,times = x,func = f,parms = NULL)
sol <-data.frame(sol)
lines(c(0,4),c(-4,4),main = "y vs x",xlab = "x",ylab = "y",type = "n")
lines(x,sol$X2,col = "blue")
lines(x,sol$X1,col = "red")
legend(x = 3,y = 3,legend = c("y1,y3","y2,y4"),lty=c(1,1))

sol<-ode(y = y0,times = x,func = g,parms = NULL)
sol <-data.frame(sol)
lines(c(0,4),c(-4,4),main = "y vs x",xlab = "x",ylab = "y",type = "n")
lines(x,sol$X2,col = "blue")
lines(x,sol$X1,col = "red")
legend(x = 3,y = 3,legend = c("y1,y3","y2,y4"),lty=c(1,1))