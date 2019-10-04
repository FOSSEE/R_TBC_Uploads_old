#Page.No 7.23

# Given distribution table
low_value<-69.5
high_value<-81.5
step_value<-2
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(3,3,4,1,4,5)
data<-rep(X_mid,f)

# Average deviation
A.D<-mean(abs(data-mean(data)))

cat("Average Deviation of the distribution is ",A.D)
