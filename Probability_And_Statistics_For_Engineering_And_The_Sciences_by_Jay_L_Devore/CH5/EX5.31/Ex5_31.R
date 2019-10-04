#Ex5.31, Page 232

#Y=3.0X1+3.2X2+3.4X3
u<-5620
s<-429.46

#P(Y>4500)
p<-1-pnorm(4500,mean=u,sd=s)
print(paste("P(revenue exceeds 4500)=",p))

