#Variance
time<-c(0.6,1.2,0.9,1.0,0.6,.8)
xbar=mean(time)
xbar#Mean 
diff=time-xbar
diffsq=diff**2
diffsum=sum(diffsq)
n=length(time)
var1=diffsum/(n-1)
cat("Variance is",var1)
#using function
var(time)
