#Ex5.8, Page 200
#Answers may vary slightly due to rounding off of values

#Expected lifetimes are 1000 and 1200 hours
lambda1<-(1/1000)
lambda2<-(1/1200)

#P(X1>=1500)
p1<-exp(-(lambda1)*1500)

#P(X2>=1500)
p2<-exp(-(lambda2)*1500)

#Joint PDF
#P(X1>=1500,X2>=1500)
p<-p1*p2
print(paste("P(both component lifetimes are at least 1500 hours)=",p))
