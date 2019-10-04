#  the 99% confidence level would imply the 99.5th percentile of the normal distribution at the upper tail
zstar <- qnorm(0.995)
width_interval<-0.50
E<-width_interval/2
sd<-0.75
sample_size<- zstar^2 * sd * sd/ E^2
print(ceiling(sample_size))
# the federal agency must obtain a random sample of 60 cereal cartons to estimate .