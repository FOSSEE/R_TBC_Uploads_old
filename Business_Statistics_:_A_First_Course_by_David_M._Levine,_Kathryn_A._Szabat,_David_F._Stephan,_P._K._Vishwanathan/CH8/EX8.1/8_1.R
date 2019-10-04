#units of all values is in inches
# sample mean
a<-10.998
#sample size
n<-100
#standard deviation
s<-0.02
error<- qnorm(0.975)*s/sqrt(n)
left<- a-error
right<- a+error
left #lower limit
right #upper limit