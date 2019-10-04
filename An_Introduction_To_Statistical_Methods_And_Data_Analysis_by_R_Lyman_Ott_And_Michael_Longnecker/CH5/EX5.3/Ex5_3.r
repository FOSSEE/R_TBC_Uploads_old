#  the 95% confidence level would imply the 97.5th percentile of the normal distribution at the upper tail
zstar <-qnorm(.975)
# standard deviation
 sd <- 125
 #  level of accuracy
 E <- 25
sample_size<- zstar^2 * sd * sd/ E^2
 print(ceiling(sample_size))
 # A sample size of 97 or larger is recommended to obtain an estimate of the mean textbook
  