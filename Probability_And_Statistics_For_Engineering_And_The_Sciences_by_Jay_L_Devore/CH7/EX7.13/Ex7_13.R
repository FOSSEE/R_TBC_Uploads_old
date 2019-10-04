#Ex7.13, Page 290
#Answers may slightly vary due to rounding off of values

mean<-21.9
s<-4.134
n<-10

#To find critical value
t<-qt(1-(0.05/2),df=n-1)
print(paste("Critical value,t:",t))

error<-t*s*sqrt(1+(1/n))

#Left endpoint
l<-mean-error
print(paste("Left endpoint of prediction interval:",l))

#Right endpoint
r<-mean+error
print(paste("Right endpoint of prediction interval:",r))