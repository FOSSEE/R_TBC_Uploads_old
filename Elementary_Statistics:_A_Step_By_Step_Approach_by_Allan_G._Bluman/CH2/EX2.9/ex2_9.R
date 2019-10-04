tp<-c(2.9, 4.3, 6, 3.8, 5.8)
names(tp)<-c("Indiana","Oklahoma","Florida","Maine","Pennysylvania")
#install package qcc that contains pareto chart
library(qcc)
pareto.chart(tp, xlab="States", ylab="Number of Turnpikes", main="Turnpike Distribution", col="blue")
