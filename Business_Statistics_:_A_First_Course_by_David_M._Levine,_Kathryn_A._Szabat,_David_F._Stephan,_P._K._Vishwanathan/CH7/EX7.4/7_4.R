# X for sampling distribution of the mean -> X= sample_average + Z * (Standard_dev/sqrt(sample_size))
sample_avg<- 368
standard_dev <- 15
sample_size<- 25
Xl <- sample_avg + (-1.96)*(standard_dev/sqrt(sample_size))
Xl # lower value of X
Xu <- sample_avg + (1.96)*(standard_dev/sqrt(sample_size))
Xu #upper value of X
