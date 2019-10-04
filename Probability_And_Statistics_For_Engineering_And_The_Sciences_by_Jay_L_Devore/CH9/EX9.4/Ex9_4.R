#Ex9.4, Page 352
#Answers may vary slightly due to rounding off of values

mu1<-2258
mu2<-2637
s1<-1519
s2<-1138
m<-663
n<-413
l<-0.05
H0<-(-200)

#To find z0.05
z1<-qnorm(1-l)

#To find test statistic value
z<-(mu1-mu2-H0)/sqrt(((s1^2)/m+(s2^2)/n))
print(paste("Test statistic value:",z))

if(z<=-z1) print(paste("H0 is rejected since",z,"<=",-z1)) 

#To find p-value
p<-pnorm(-abs(z))
print(paste("P-value:",p))
if(p<=l) print(paste("H0 is rejected since",p,"<=",l))