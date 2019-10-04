#Ex8.5, Page 308

#H0: mu=1.5
#Ha: mu>1.5

mu0<-1.5
n<-32
sd<-0.2
sdx<-sd/sqrt(n)
print(paste("Rejection region: Z>=c"))

alpha<-0.05
#where alpha=P(type I error)=P(Z>=c when Z follows N(0,1))
c<-qnorm(1-alpha)
print(paste("C value:",c))

#Z>=c
x<-round(mu0+sdx*c,digits=2)
print(paste("xbar>=",x))
print(paste("Beta refers to the prob. that xbar<",x,"and can be calculated for any mu>1.5"))
