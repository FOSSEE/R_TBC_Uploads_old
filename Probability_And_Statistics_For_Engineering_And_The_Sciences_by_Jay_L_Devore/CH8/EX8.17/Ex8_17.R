#Ex8.17, Page 333
#Answers may vary slightly due to rounding off of values

#H0: mu=245
#Ha: mu!=245

xbar<-246.18
mu0<-245
n<-50
sd<-3.6
alpha<-0.01

#To find z value
z<-(xbar-mu0)/(sd/sqrt(n))
print(paste("Test statistic value:",z))

#To find p value in two tailed experiment
p<-2*(1-pnorm(z))
print(paste("P-value:",p))

if(p>alpha) print(paste("H0 not rejected at significance level",alpha)) else print(paste("H0 rejected at significance level",alpha))