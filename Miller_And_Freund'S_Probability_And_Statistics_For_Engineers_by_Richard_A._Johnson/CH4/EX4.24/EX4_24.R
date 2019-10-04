alpha=6
#4 bad check for any one day
x=4
T=1
lambda=alpha*T
prob=dpois(x,lambda)
cat("THER FOR th e probability that 4 bad check on any day is",prob)
#For 10 bad check on  Two Consecutive dayes
T=2
x=10
lambda=alpha*T
prob=ppois(x,lambda) - ppois(x-1,lambda)
cat("THER FOR th e probability that 10 bad check on any two day  is",prob)

