x<-c(0,1,2,3,4)
Fx<-c(0.05,0.20,0.45,0.20,0.10)
xFx<-x*Fx
cbind(x,Fx,xFx)
mu=weighted.mean(x,Fx)
var=sum((x^2)*Fx)-(mu)^2
message("mean :",mu," variance: ",var)