#sampling distribution
options(digits = 3)
sd=1.20
mean=1.82#mean
n=40
Xbar<-c(1.65,2.04)
Xbar
z=(Xbar-mean)*(n**0.5)/(sd)
z
message("Probability is: ",pnorm(1.16)-pnorm(-0.896))


