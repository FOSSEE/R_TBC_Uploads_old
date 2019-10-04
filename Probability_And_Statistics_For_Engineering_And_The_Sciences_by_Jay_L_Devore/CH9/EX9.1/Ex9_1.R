#Ex9.1, Page 348
#Answers may slightly vary due to rounding off of values

#H0: mu1-mu2=0
#Ha: mu1-mu2!=0

xbar<-29.8
ybar<-34.7
s1<-4
s2<-5
m<-20
n<-25

#To find percentile
alpha<-0.01
H0<-qnorm(1-alpha/2)

#To find test statistic value
z<-(xbar-ybar)/sqrt((s1^2)/m+(s2^2)/n)
print(paste("Test statistic value:",z))

if(z>=H0||z<=H0)print(paste("H0 is rejected at level",alpha)) else print(paste("H0 is accepted at level",alpha))
