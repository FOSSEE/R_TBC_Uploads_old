#Ex7.3, Page 272
#Answers may slightly vary due to rounding off of values

mean<-5.426
n<-40
sd<-0.1

#To find alpha for (100(1-alpha)=90)
alpha<-solve(100,10)

error<-qnorm(1-(alpha/2))*(sd/sqrt(n))

#Left endpoint
l<-mean-error
print(paste("Left endpoint of interval:",l))

#Right endpoint
r<-mean+error
print(paste("Right endpoint of interval:",r))
