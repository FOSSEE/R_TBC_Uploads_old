# Page.No 4.8

# Given data
low_value<-9.5
high_value<-34.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(5,4,6,4,2)
data<-rep(X_mid,f)

# Histogram
hist(data,main="Histogram", 
     xlab="class_limits", 
     border="black", 
     col="Steelblue3",
     xlim=c(0,40),
     las=1, 
     breaks=5)
