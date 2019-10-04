#Ex3.40, Page 129
#Answers may vary slightly due to rounding off of values

n<-400
p<-0.005

#P(X=1):b(x;n,p)->p(x;u)
u<-n*p
p1<-dpois(1,lambda=u)
print(paste("P(X=1)=",p1))

#P(X<=3)
p2<-ppois(3,lambda=u)
print(paste("P(X<=3)=",p2))