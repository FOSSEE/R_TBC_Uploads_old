#Ex3.37, Page 125

n<-10
M<-5
N<-25
p<-M/N

#E(X)=np
e<-n*p
print(paste("Mean=",e))

#V(X)=npq 
v<-n*p*(1-p)
print(paste("Variance without replacement=",v))

#Estimate of N when M=5, n=10 and x=16
M<-100
n<-40
x<-16
ne<-(M*n)/x
print(paste("Estimate is", ne))
