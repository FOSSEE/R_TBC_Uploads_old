#Here in this example ppios() for Poisson distribution
alpha=0.2
#one interruption in 3 weeks
x=1
T=3
lambda=alpha*T
prob=ppois(x,lambda)-ppois(0,lambda)
prob
cat("probability is",prob)
#at least two interruptions in 5 weeks
T=5
x=1
lambda=alpha*T
prob=1-ppois(x,lambda)
cat("probability is",prob)
#For at most one imperfaction in 15 week
T=15
x=1
lambda=alpha*T
prob=ppois(x,lambda)
cat("probability is",prob)
