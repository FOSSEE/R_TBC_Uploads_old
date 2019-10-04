#Ex4.7, Page 145*

#if x<0,         F(X)=0
#if 0<=x<=2,     F(X)=(x/8)+(3/16)(x^2)
#if x>2,         F(X)=1

load<-function(x){
  f<-(x/8)+(3/16)*(x^2)
  return(f)
}

#P(1<=X<=1.5)=P(X=1.5)-P(X=1)
p1<-load(1.5)-load(1)
print(paste("P(1<=X<=1.5)=",p1))

#P(X>1)=1-P(X<=1)
p2<-1-load(1)
print(paste("P(load exceeds 1)=",p2))
