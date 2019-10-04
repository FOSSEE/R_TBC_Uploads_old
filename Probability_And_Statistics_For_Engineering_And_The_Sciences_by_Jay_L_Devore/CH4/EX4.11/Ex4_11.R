#Ex4.11, Page 149
#if 0<=x<=1     f(x)=1
#otherwise      f(x)=0

#h(X)=max(1-X,X)
#if 0<=X<1/2    h(X)=1-X
#if 1/2<=X<=1   h(X)=X

#f<-function(x) {max(x,1-x)*f(x)}
#integrate(f,lower=0,upper=1)

f1<-function(x) {(1-x)*1}
p1<-integrate(f1,lower=0,upper=1/2)

f2<-function(x) {x*1}
p2<-integrate(f2,lower=0.5,upper=1)

p3<-p1$value+p2$value
print(paste("E[h(X)]=",p3))
