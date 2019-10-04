measurement<-c(16,25,4,18,11,13,20,8,11,9)
cat("Lower quantile is",quantile(measurement, 0.25))
cat("Upper quantile is",quantile(measurement, 0.75))
cat("IQR =",IQR(measurement))
summary(measurement)
#the answers provided in the textbook is wrong