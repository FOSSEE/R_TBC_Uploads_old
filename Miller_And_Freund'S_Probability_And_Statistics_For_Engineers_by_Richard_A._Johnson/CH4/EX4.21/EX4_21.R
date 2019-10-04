lambda=1.3#gamma particales per millisecond coming from radio active substain
#(a)probability for exactly one week
prob=dpois(1,1.3)#P(X=1)
prob
#(b)probability for one or more gamma parical i.e. P>1
prob=1 - ppois(0, 1.3)#1-P(X=0)
prob
#(c)the probability of at least two but no more than four particles
prob=ppois(4,lambda)-ppois(1,lambda)
prob
#(d)vaiance
print("For Poisson the variance equal to lambda i.e 1.3")