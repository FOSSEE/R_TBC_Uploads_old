#Page.No 5.17

X<-c(10,12,18,16,14)
d<-X-mean(X)
sum_of_deviations<-sum(d)
sum_of_dsquares<-sum(d^2)
cat("The Sum of squares of deviations is",sum_of_dsquares)# which is greater than sum of squares
mean(X)
