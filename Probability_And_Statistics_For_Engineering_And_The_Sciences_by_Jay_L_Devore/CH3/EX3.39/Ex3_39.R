#Ex3.39, Page 129
#Answers may slightly vary due to rounding off of values

u<-4.5
#Poisson distribution
#P(X=5) 
p1<-dpois(5,lambda=u)
print(paste("P(X=5)=",p1))

#P(X<=5)
p2<-ppois(5,lambda=u)
print(paste("P(X<=5)=",p2))