#Page.No 7.31 - 7.32

# Given distribution table
low_value<-9.5
high_value<-34.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(2,8,6,2,2)
data<-rep(X_mid,f)

n <- length(data)  # number of values

std <- sd(data)    # sample standard deviation

S.D<-sqrt((std ^ 2) * ((n - 1) / n))  # Population std deveiation

cat("The standard deviation of the scores is",S.D)
