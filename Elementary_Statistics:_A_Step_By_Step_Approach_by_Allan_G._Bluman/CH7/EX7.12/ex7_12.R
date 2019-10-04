z=round(qnorm(0.951),2)
E=0.05
p=0.50
q=1-p
n=p*q*((z/E)^2)
if(n>round(n))
  n=n+1
l<-paste("Minimum sample space required is",round(n))
l

