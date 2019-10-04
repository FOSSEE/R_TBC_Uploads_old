#Ex5.19, Page 212
#Answers may vary slightly due to rounding off of values

#alpha
a<-2

#beta
b<-5

#Mean
u<-b*gamma(1+(1/a))
print(paste("Mean, E(X)=",u))

#Variance
v<-(b^2)*{gamma(1+(2/a))-(gamma(1+(1/a)))^2}
print(paste("Variance=",v))

#Standard deviation
s<-sqrt(v)
print(paste("Standard deviation=",s))

#Median
med<-b*(log(2,base=exp(1)))^(1/a)
print(paste("Median=",med))

q<-qweibull(0.99,shape=a,scale=b)
curve(dweibull(x,a,b),from=0,to=q,ylab='density')

if(u>med){
  print(paste("Mean exceeds median because of the distribution's positive skew"))
}