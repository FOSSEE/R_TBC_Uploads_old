#Effect of sample size n, on the clustering of Means is the sampling Distribution
# Z formula for sample means : z = (sample_mean - average)/(standard_dev/sqrt(sample_size))
sample_mean<- 365
avg<- 368
standard_dev<-15
sample_size<- 100
standard_error_mean<- standard_dev/sqrt(sample_size) 
z<- (sample_mean - avg)/standard_error_mean
z
