#Page.No 5.9

Lower_limits<-c(5,11,17,23,29)
Upper_limits<-c(10,15,22,28,35)
frequency<-c(1,4,3,7,5)
library("gds")  # function for Descriptive statistics of grouped data
results<-gds(Lower_limits,Upper_limits,frequency)
cat("the mean of the distribution is",results$mean)
