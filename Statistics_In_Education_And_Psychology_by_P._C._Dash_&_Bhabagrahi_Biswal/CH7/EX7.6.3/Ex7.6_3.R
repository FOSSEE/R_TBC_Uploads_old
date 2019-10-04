#Page.No 7.15 -7.17

library("gds")  # function to find descriptive statistics of Grouped data
 
f<-c(6,4,6,4,8,7,5)
Lower_limits<-c(39.5,44.5,49.5,54.5,59.5,64.5,69.5)
Upper_limits<-c(44.5,49.5,54.5,59.5,64.5,69.5,74.5)
results<-gds(Lower_limits,Upper_limits,f)

cat("The first quartile is",results$quartile1)

cat("The third quartile is",results$quartile3)

# Quartile deviation
Q<-(results$quartile3-results$quartile1)/2
cat("The quartile deviation of the distibution is ",Q)

