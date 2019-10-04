#Page.No 5.33

#(i) and (ii)
Lower_limits<-c(40,50,60,70,80,90)
Upper_limits<-c(49,59,69,79,89,99)
frequency<-c(14,12,15,10,15,14)

library("gds")  # Function to find Descriptive statistics of grouped data
results<-gds(Lower_limits,Upper_limits,frequency)
cat("the median of the distribution is",results$median)
#The  answer may slightly vary due to  rounding off values
