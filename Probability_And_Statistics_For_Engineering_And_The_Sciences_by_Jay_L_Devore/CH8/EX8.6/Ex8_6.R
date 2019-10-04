#Ex8.6, Page 312
#Answers may vary slightly due to rounding off of values

mu0<-130
n<-9
sd<-1.5
xbar<-131.08

z<-(xbar-mu0)/(sd/sqrt(n))        #Test statistic value
print(paste("Test statistic value:",z))

#To determine rejection region
alpha<-0.01
a<-qnorm(1-alpha/2) 
l<-(-a)
r<-a
print(paste("Rejection region: z<=",l,",z>=",r))
if(z<=l || z>=r)print(paste(z,"falls in the rejection region and H0 is rejected"))else print(paste(z,"does not fall in the rejection region so H0 cannot be rejected at significance level",alpha))

