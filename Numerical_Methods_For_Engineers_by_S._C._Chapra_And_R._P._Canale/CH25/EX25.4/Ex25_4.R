m=68.1
g=9.8
c=12.5
a=8.3
b=2.2
vmax=46

f <- function(t,v,parms) {
  list(c(g-c*v/m))
}

v0=0
t=0:15
sol<-ode(y = v0,times = t,func = f,parms = NULL)
sol <-data.frame(sol)
plot(t,sol$X1,main ="velocity vs time", xlab = "t (s)",ylab = "v (m/s)")
lines(t,sol$X1,col = "red")

f1 <- function(t,v,parms) {
  list(c(g-(c/m)*(v+a*(v/vmax)^b)))
}

sol<-ode(y = v0,times = t,func = f1,parms = NULL)
sol <-data.frame(sol)
lines(t,sol$X1,col="blue")
legend(x = 10,y = 20,legend = c("Linear","Nonlinear"),lty=c(1,1),col=c("red","blue"))