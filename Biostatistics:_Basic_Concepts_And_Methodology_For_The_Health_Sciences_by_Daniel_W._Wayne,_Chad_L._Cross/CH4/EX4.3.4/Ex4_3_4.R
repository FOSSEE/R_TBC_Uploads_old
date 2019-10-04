##Example 4.3.4 Pg.105
##Binomial probabilities P(X=5) , P(X<=5) , P(X>=8)

prob_a = dbinom(5,12,0.45)     #gives binomial density for x=5,n=12,p=0.45
prob_a

prob_b = pbinom(5,12,0.55)     #gives binomial cumulative dist for x=5,n=12,p=0.55
prob_b

prob_c = 1 - pbinom(7,12,0.55)
prob_c


