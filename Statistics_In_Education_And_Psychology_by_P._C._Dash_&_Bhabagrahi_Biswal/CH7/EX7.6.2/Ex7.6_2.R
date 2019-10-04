#Page.No 7.13-7.15
 
library("gds")   # function to find descriptive statistics of Grouped data

# Given data
f<-c(2,8,10,12,8,10)
Lower_limits<-c(39.5,49.5,59.5,69.5,79.5,89.5)
Upper_limits<-c(49.5,59.5,69.5,79.5,89.5,99.5)
results<-gds(Lower_limits,Upper_limits,f)

cat("The first quartile is",results$quartile1)

cat("The third quartile is",results$quartile3)

# Quartile deviation
Q<-(results$quartile3-results$quartile1)/2
cat("The quartile deviation is ",Q)

