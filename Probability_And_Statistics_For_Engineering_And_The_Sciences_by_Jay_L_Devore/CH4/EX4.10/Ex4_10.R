#Ex4.10, Page 148

#if 0<=x<=1     f(x)= (3/2)(1-x^2) 
#otherwise      f(x)= 0

f1<-function(x) {(3/2)*x*(1-x^2)}
p1<-integrate(f1,lower=0,upper=1)
print(paste("E(X)=",p1$value))

