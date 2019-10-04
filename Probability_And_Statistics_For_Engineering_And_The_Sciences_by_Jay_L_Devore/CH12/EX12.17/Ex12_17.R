#Ex12.17, Page 513
#Answers may vary slightly due to rounding off of values

r<-0.29
n<-45
#To find the test statistic
t<-r*sqrt(n-2)/sqrt(1-r^2)
print(paste("t:",round(t,digits=0)))

#P value for two tailed test
p<-2*pt(-abs(t),df=n-1)
print(p)

