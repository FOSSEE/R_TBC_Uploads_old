#Ex7.2, Page 270
#Answers may slightly vary due to rounding off of values

mean<-80
n<-31
sd<-2
error<-qt(0.95,df=n-1)*sd/sqrt(n)

#Left endpoint
l<-mean-error
print(paste("Left endpoint of interval:",l))

#Right endpoint
r<-mean+error
print(paste("Right endpoint of interval:",r))
