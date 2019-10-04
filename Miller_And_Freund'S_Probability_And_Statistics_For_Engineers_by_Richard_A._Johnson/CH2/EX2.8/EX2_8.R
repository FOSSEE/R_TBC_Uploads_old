#Mean and variance
data<-c(100,45,60,130,30)#this is a university students responded for time in social media
#Using function
mean(data)
median(data)
#Without function
xbar=sum(data)/length(data)
xbar
med=data[ceiling(length(data)/2)]
med
cat("mean and median of data is",xbar,'and',med)
