measurements<-c(5,7,1,2,4)
x<-range(measurements)
range <- x[2]-x[1]
sd <- range /4
cat("standard deviation from range approximation is",sd)
#the value of standard deviation from range approximation is not accurate