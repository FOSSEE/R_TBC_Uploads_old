#Ex7.14, Page 291
#Answers may vary slightly due to rounding off of values

data<-c(10490,16620,17300,15480,12970,17260,13400,13900, 
        13630,13260,14370,11700,15470,17840,14070,14760)
print(data)

n<-16

#To find mean
mean<-mean(data)
print(paste("Mean:",mean))

#To find standard deviation
s<-sd(data)
print(paste("Standard deviation:",s))

#To find tolerance intervals
t1<-2.903
error1<-t1*s
#Left endpoint
l1<-mean-error1
print(paste("Left endpoint of tolerance interval:",l1))
#Right endpoint
r1<-mean+error1
print(paste("Right endpoint of tolerance interval:",r1))

#To find confidence intervals
t2<-qt(1-(0.05/2),df=n-1)
error2<-t2*(s/sqrt(n))
#Left endpoint
l2<-mean-error2
print(paste("Left endpoint of confidence interval:",l2))
#Right endpoint
r2<-mean+error2
print(paste("Right endpoint of confidence interval:",r2))

#To find prediction intervals
t3<-qt(1-(0.05/2),df=n-1)
error3<-t3*s*sqrt(1+(1/n))
#Left endpoint
l3<-mean-error3
print(paste("Left endpoint of prediction interval:",l3))
#Right endpoint
r3<-mean+error3
print(paste("Right endpoint of prediction interval:",r3))
