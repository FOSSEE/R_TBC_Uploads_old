#Ex4.12, Page 150

#E(X)
e<-3/8

#E(X^2)
e2<-function(x)  {(3/2)*(x^2)*(1-(x^2))}
p1<-integrate(e2,lower=0,upper=1)
print(paste("E(X^2)=",p1$value))

#V(X)
v<-(p1$value)-(e^2)
print(paste("V(X)=",v))

#Standard deviation
sd<-sqrt(v)
print(paste("Standard deviation =",sd))
