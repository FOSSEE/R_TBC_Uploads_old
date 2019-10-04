measurement<-c(1,1,0,15,2,3,4,0,1,3)
mean <- mean(measurement)
s <- sd(measurement)
x <- 15
cat("z_score is",(x-mean)/s)
