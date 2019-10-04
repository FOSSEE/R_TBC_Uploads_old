#Ex5.30, Page 232
#Answers may slightly vary due to rounding off of values

u1<-22
u2<-26
s1<-1.2
s2<-1.5

#Mean
e<-u1-u2
print(paste("E(X1-X2)=",e))

#Variance
v<-(s1^2)+(s2^2)
print(paste("V(X1-X2)=",v))

#Standard deviation
sd<-sqrt(v)
print(paste("SD=",sd))