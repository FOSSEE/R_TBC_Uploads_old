z=round(qnorm(0.975),2)
E=0.02
p=0.40
q=1-p
n=p*q*((z/E)^2)
l<-paste("Minimum sample space required is",round(n))
l
