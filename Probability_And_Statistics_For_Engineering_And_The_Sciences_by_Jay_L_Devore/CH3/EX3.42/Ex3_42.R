#Ex3.42, Page 131
#Answer may slightly vary due to rounding off of value

alpha<-6
t<-0.5
l<-alpha*t

#P(X>=1)=1-P(X=0)
p<-1-dpois(0,lambda=l)
print(paste("P(X>=1)=",p))