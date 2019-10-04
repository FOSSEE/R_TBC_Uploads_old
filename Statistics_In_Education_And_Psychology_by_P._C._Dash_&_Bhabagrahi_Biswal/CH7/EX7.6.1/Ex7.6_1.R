#Page.No 7.10 -7.13

library("gds") # function to find descriptive statistics of Grouped data 

f<-c(2,8,10,6,5,9)  # frequency 

Lower_limits<-c(9.5,14.5,19.5,24.5,29.5,34.5)
Upper_limits<-c(14.5,19.5,24.5,29.5,34.5,39.5)

results<-gds(Lower_limits,Upper_limits,f)

cat("The first quartile is",results$quartile1)  # 1st Quartile

cat("The third quartile is",results$quartile3)  # 3rd Quartile

#Quartile deviation
Q<-(results$quartile3-results$quartile1)/2

cat("The quartile deviation is ",Q)

