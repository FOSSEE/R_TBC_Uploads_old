#Page.No 7.24

# Given distribution table
low_value<-103.5
high_value<-128.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(4,3,2,6,5)
data<-rep(X_mid,f)

# Average deviation
A.D<-mean(abs(data-mean(data)))

cat("Average Deviation of the distribution is ",A.D)
