#Ex3.34,Page 120
n<-10
p<-0.75

#Mean, E(x)=np
e<-n*p
print(paste("Mean=",e))

#Variance, V(X)=npq
v<-n*p*(1-p)
print(paste("Variance=",v))

#Standard deviation=sqrt(V(X))
s<-sqrt(v)
print(paste("Standard deviation=",s))

#P(X= 7or8)=P(X=7)+P(X=8)
prob1=dbinom(0:7,size=10,prob=0.75)
prob2=dbinom(0:8,size=10,prob=0.75)
c<-max(prob1)+max(prob2)
print(paste("P(X= 7or8)=",c))