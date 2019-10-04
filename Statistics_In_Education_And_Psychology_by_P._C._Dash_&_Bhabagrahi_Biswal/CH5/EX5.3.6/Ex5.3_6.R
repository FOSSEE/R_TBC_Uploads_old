#Page.No 5.12 -5.14

Lower_limits<-c(10,15,20,25,30)
Upper_limits<-c(14,19,24,29,35)
frequency<-c(5,10,7,2,1)
library("gds")  # Function for Descriptive statistics of grouped data
results<-gds(Lower_limits,Upper_limits,frequency)
cat("the mean of the distribution is",results$mean)
