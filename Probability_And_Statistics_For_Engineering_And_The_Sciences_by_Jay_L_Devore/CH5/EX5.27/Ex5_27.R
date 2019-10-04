#Ex5.27, Page 226
#Answer may slightly vary due to rounding off of value

n<-100
m<-3.2
sd<-2.4

ux<-m
sx<-sd/sqrt(n)

#P(Mean>4)=1-P(Mean<=4)
p<-1-pnorm(4,mean=ux,sd=sx)
print(paste("P(Mean>4)=",p))