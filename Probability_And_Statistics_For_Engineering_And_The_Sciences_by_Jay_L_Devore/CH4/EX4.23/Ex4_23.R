#Ex4.23, Page 169
#Answers may slightly vary due to rounding off of values

alpha<-2

#P(3<=X<=5)
a<-pgamma(5,shape=alpha)-pgamma(3,shape=alpha)
print(paste("P(3<=X<=5)=",a))

#P(X>4)=1-P(X<=4)
b<-1-pgamma(4,shape=alpha)
print(paste("P(reaction time is more than 4 sec)=",b))
