#Ex4.28, Page 177

#Optimistic time
A<-2

#Pessimistic time
B<-5

#alpha
a<-2
#beta
b<-3

#E(X)
e<-A+(B-A)*(a/(a+b))
print(paste("Mean=",e))

c<-(1/(B-A))*((gamma(a+b))/(gamma(a)*gamma(b)))
f1<-function(x) {c*(((x-A)/(B-A))^(a-1))*(((B-x)/(B-A))^(b-1))}
p<-integrate(f1,lower=2,upper=3)
print(paste("P(it take atmost 3 days to lay the foundation)=",p$value))