# Normal Approximation to the Binomial
# number of trails
n<-1000
# probability of success of single event
z<-0.5
Mean<-n*z
s<-sqrt(n*z*(1-z))
 #  the probability of observing 460 or fewer
pnorm(460,mean=Mean,sd=s)
