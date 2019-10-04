#measurment of toxic level of chemical 
data<-c(1.26,1.34,1.82,0.55,0.73,0.78,1.10)
n = 7 #Sample size
t.alpha=qt(1-0.025,6)
# the 95% confidence formula for mu becomes
t.test(data)
cat("We are 95% confident that the interval from 0.68 to 1.49
contains the mean change in the red color component")
