#Ex7.10, Page 283
#Answer may slightly vary due to rounding off of value

mean<-17.17
z<-qnorm(0.95)
n<-48
sd<-3.28

#To find lower bound
c<-mean-(z*sd/sqrt(n))
print(paste("Lower confidence bound for mean:",c))