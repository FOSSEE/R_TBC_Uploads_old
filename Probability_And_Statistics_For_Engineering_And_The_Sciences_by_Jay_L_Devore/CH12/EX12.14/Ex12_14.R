#Ex12.14, Page 505
#Answers may vary slightly due to rounding off of values

ycap<-13.79
sy<-0.7582
s<-2.8640
n<-18
df<-n-2
t<-2.120

#To find confidence intervals
l<-ycap-t*sqrt(s^2+sy^2)
r<-ycap+t*sqrt(s^2+sy^2)
print(paste("Left endpoint of confidence interval:",l))
print(paste("Right endpoint of confidence interval:",r))
