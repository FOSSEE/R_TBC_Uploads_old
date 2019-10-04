# Page.No 4.9

# Given data table 
low_value<-4.5
high_value<-39.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_breaks
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
X_mid
f<-c(0,2,3,6,4,5,0)
data<-rep(X_mid,f)

# Plottinf the frequency polugon
plot(X_mid,f,type = "line",main = "title",xlab = "Mid Points",ylab = "Frequencies",col = "red")

## Another method
hist<-(hist(data,main ="Histogram",xlab="class_limits",border="black",col="Steelblue3",xlim=c(0,50),las=1,breaks=5))
library("agricolae")
polygon.freq(hist,f=1,col="red")
