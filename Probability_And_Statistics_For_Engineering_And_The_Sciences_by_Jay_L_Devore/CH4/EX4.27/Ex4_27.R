#Ex4.27, Page 175
#Answers may slightly vary due to rounding off of values

m<-0.353
s<-0.754

e<-exp(m+(s^2)/2)
print(paste("E(X)=",e))

v<-exp(2*m+(s^2))*(exp(s^2)-1)
print(paste("V(X)=",v))

#P(1<=X<=2)
l1<-log(1,base=exp(1))
l2<-log(2,base=exp(1))
p<-pnorm(l2,m,s)-pnorm(l1,m,s)
print(paste("P(maximum pit depth is between 1 and 2 mm)=",p))

#To find c such that only 1% of all specimens have a maximum pit depth excceding c
per<-1/100
c<-exp(1)^(qnorm(1-per)*s+m)
print(paste(c,"is the 99th percentile of the maximum pit depth distribution"))