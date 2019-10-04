#Ex4.25, Page 173
#Answers may slightly vary due to rounding off of values

alpha<-2
beta<-10

#P(X<=10)
p1<-pweibull(10,alpha,beta)
print(paste("P(X<=10)=",p1))

#P(X<=25)
p2<-pweibull(25,alpha,beta)
print(paste("P(X<=25)=",p2))

#To find c value which separates 5% of all engines having largest NOx emissions from remaining 95%
per<-5/100
c<-sqrt((-1)*(10^2)*log(per))
print(paste(c,"is the 95th percentile of the emission distribution"))
