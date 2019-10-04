y <- c(5,4,3,1,3)
mean_y<-sum(y)/length(y)
sample_variance <-(sum((y-mean_y)^2/(length(y)-1)))
print(sample_variance)