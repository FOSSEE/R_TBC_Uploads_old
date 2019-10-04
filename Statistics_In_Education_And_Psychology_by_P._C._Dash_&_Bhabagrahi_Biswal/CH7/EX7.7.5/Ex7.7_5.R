#Page.No 7.22

# Given distribution table
low_value<-99.5
high_value<-169.5
step_value<-10
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(10,8,7,6,12,9,8)
data<-rep(X_mid,f)

# Average deviation
A.D<-mean(abs(data-mean(data)))

cat("Average Deviation of the distribution is ",A.D)
