#Null hypothesis: p = 0.70
#Alternative hypothesis: p > 0.70
loc=0.05
z.alpha=qnorm(1-0.05)
z.alpha
#Criterion: Reject the null hypothesis if Z > 1.645, where
x = 48
n = 60
p0 = 0.70
Z=(x - n*p0)/sqrt(n*p0*( 1 - p0))
Z
cat("Since z = 1.69 is greater than 1.645, we reject the null hypothesis at
level 0.05. In other words, there is sufficient evidence to conclude that the
proportion of good transceivers that would be produced is greater than 0.70")