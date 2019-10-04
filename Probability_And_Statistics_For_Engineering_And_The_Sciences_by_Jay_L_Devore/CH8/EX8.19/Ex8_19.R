#Ex8.19, Page 335
#Answers may vary slightly due to rounding off of values
#Tests for mean=20 have only been done....

#H0: mu=20
#Ha: mu>20

n<-4
df<-n-1
mu0<-20
sd<-2
x<-c(20.83,22.232,20.276,17.718)

xbar<-mean(x)
print(paste("Mean:",xbar))
s<-sd(x)
print(paste("Standard deviation:",s))

#To find t
t<-(xbar-mu0)/(s/sqrt(n))
print(paste("Test statistic value:",t))

#To find p value
p<-pt(t,df=n-1,lower.tail = FALSE)

alpha<-0.05
if(p>alpha) print(paste("H0 is not rejected at significance level",alpha)) else  print(paste("H0 is rejected at significance level",alpha))
