#Page.No 5.30

Lower_limits<-c(10,15,20,25,30)
Upper_limits<-c(14,19,24,29,34)
frequency<-c(5,4,6,3,2)
library("gds")
results<-gds(Lower_limits,Upper_limits,frequency)
cat("the median of the distribution is",results$median)
