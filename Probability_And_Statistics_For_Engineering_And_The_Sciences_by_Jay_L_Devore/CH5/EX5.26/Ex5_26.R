#Ex5.26, Page 225
#Answer may slightly vary due to rounding off of value

n<-50
m<-4
sd<-1.5

ux<-m
sx<-sd/sqrt(n)

#P(3.5<=Mean<=3.8)
p<-pnorm(3.8,mean=ux,sd=sx)-pnorm(3.5,mean=ux,sd=sx)
print(paste("P(3.5<=Mean<=3.8)=",p))