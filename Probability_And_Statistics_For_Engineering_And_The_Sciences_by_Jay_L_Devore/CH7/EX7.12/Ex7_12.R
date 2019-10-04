#Ex7.12, Page 288
#Answers may slightly vary due to rounding off of values

data<-c(25.2,21.3,22.8,17.0,29.8,21.0,25.5,16.0,20.9,19.5)
print(data)

n<-10

#To find mean
mean<-mean(data)
print(paste("Mean:",mean))

#To find standard deviation
s<-sd(data)
print(paste("Standard deviation:",s))

#To find confidence intervals
t<-qt(1-(0.05/2),df=n-1)
print(paste("Critical value,t:",t))
error<-t*(s/sqrt(n))

#Left endpoint
l<-mean-error
print(paste("Left endpoint of interval:",l))

#Right endpoint
r<-mean+error
print(paste("Right endpoint of interval:",r))

