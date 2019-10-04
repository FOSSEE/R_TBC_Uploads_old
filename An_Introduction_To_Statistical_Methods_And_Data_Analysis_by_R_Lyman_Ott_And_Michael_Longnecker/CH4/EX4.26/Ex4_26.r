# Normal Approximation to the Binomial
# number of trails
n<-100
# probability of success of single event
z<-0.2
Mean<-n*z
s<-sqrt(n*z*(1-z))
#  e probability that at least 15 of the 100 drugs are eventually licensed (>14.5)
pnorm(14.5, mean=Mean, sd=s, lower.tail=FALSE)
