#Page.No 5.32 - 5.33

library("gds") #function for Descriptive statistics of grouped data
lower_limits<-c(10,15,20,25,30)
upper_limits<-c(14,19,24,29,34)
frequency<-c(5,4,6,3,2)
md<-gds(lower_limits,upper_limits,frequency)
cat("The median is",md$median)
