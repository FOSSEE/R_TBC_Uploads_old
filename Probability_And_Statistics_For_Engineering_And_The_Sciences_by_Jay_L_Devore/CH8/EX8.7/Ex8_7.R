#Ex8.7, Page 314
#Answers may vary slightly due to rounding off of values

n<-16
sd<-1500
alpha1<-0.01
xbar<-30000
mu0<-31000

zalpha1<-qnorm(1-alpha1)

z<-(xbar-mu0)/(sd/sqrt(n))

#To find beta(31000) when alpha=0.01
beta1<-pnorm(zalpha1+z)
print(paste("Beta(31000):",beta1,"when alpha=",alpha1))

alpha2<-0.1
zalpha2<-qnorm(1-alpha2)

#To find beta(31000) when alpha=0.1
beta2<-pnorm(zalpha2+z)
print(paste("Beta(31000):",round(beta2,digits=1),"when alpha=",alpha2))

#To find n
n<-(sd*(zalpha1+zalpha2)/(xbar-mu0))^2
print(paste("n value:",n))
print(paste("Sample size=",ceiling(n)))
