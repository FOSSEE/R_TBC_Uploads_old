library(deSolve)

predprey <- function(t,y,parms) {
  a = 1.2*y[1]-0.6*y[1]*y[2]
  b = -0.8*y[2]+0.3*y[1]*y[2]
  list(c(a,b))
}
t=0:10
y0<-c(2, 1)
sol=ode(y = y0,parms = NULL,times = t,func = predprey)
sol<-data.frame(sol)

count=0;
for (i in 1:11){
  cat("istep=",count+1,"\n","time=",count,"\n","y1=",sol$X1[i],"\n","y2=",sol$X2[i],"\n","---------------------------------------------------\n")
count=count+1
}