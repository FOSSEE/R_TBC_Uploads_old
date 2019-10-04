#Ex8.9, Page 317
#Answers may vary slightly due to rounding off of values

data<-c(2.67,4.62,4.14,3.81,3.83)
n<-length(data)

alpha<-0.05
mu0<-4

#To determine rejection region
t1<-qt(1-alpha/2,df=n-1)
l<-(-t1)
r<-t1
print(paste("Rejection region: t<=",l,",t>=",r))

#To find mean
print(paste("Sum of sample:",sum(data)))
print(paste("Mean:",mean(data)))

#To find standard deviation
print(paste("Standard deviation:",sd(data)))
print(paste("Estimated standard error of the mean:",sd(data)/sqrt(n)))

#Test statistic value
t1<-t.test(data,alternative="two.sided",mu=mu0)
print(t1)
