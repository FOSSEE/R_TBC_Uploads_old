#Ex4.24, Page 169
#Answers may slightly vary due to rounding off of values

#alpha
a<-8
#beta
b<-15

#E(X)
e<-a*b
print(paste("E(X)=",e))

#V(X)
v<-a*(b^2)
print(paste("V(X)=",v))

#SD
sd<-sqrt(v)
print(paste("Standard deviation =",sd))

#P(60<=X<=120)=P(X<=120)-P(X<=60)
p1<-pgamma(120/b,shape=a)-pgamma(60/b,a)
print(paste("P(mouse survives between 60 and 120 weeks)=",p1))

#P(X>=30)=1-P(X<30)
p2<-1-pgamma(30/b,a)
print(paste("P(mouse survives at least 30 weeks)=",p2))



