#Ex9.2, Page 349
#Answers may slightly vary due to rounding off of values

#H0: mu1-mu2=0
#Ha: mu1-mu2>0

xbar<-48.9
ybar<-43.2
s1<-14.6
s2<-14.4
m<-125
n<-90
alpha<-0.01

#To find test statistic value
z<-(xbar-ybar)/sqrt((s1^2)/m+(s2^2)/n)
print(paste("Test statistic value:",z))

#To find p-value
p<-pnorm(-abs(z))
print(paste("p-value:",p))

if(alpha>p) print(paste("H0 is rejected at level",alpha)) else  print(paste("H0 is accepted at level",alpha))

