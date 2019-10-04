#We take the probability p = 0.056 which is the value estimated from the physics experiment
p = 0.056 
n=300
#(a) find the mean and standard deviation of the number which will disappear
mean=n*p
sd=sqrt(n*p*(1-p))
mean
sd
#(b) Approximate the probability that 12 or more will disappear.
1-pnorm((11.5-mean)/sd)
#(c) Approximate the probability of exactly 12
pnorm((12.5-mean)/sd)-pnorm((11.5-mean)/sd)
