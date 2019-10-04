#Standard deviation for  Probability distribution
#(a)
x<-c(0,1,2,3,4)
Fx<-c(1/16,4/16,6/16,4/16,1/16)
mu=weighted.mean(x,Fx)
mu
var=sum(((x-2)^2)*Fx)
var
message("The standard deviation is ",sqrt(var))
