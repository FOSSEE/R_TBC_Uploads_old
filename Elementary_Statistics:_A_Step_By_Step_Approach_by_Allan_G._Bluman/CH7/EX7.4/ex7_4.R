c=0.99
a=1-c
s=4.38
z=round(qnorm(0.995),2)
z
E=2
ss=(z*s/E)^2
l<-paste("to be 99% confident that the estimate is within 2 feet of the true mean depth, the scientist needs at least a sample of",round(ss),"measurements.")
l