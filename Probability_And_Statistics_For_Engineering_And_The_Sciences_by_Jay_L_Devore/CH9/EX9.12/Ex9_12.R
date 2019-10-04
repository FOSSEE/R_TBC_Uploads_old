#Ex9.12, Page 378
#Answers may vary slightly due to rounding off of values

#H0: p1-p2=0
#Ha: p1-p2>0

a<-30
tot1<-100000
p1<-a/tot1
print(paste("p1:",p1))
q1<-1-p1

b<-a/2
p2<-b/tot1
print(paste("p2:",p2))
q2<-1-p2

alpha<-0.05
beta<-0.1

zalpha<-qnorm(1-alpha)
zbeta<-qnorm(1-beta)
d<-p1-p2

#To find n value
n<-(zalpha*sqrt((p1+p2)*(q1+q2)/2)+zbeta*sqrt(p1*q1+p2*q2))^2/d^2
print(paste("Value of n:",n))