##Example 4.3.3 Pg.103
##Binomial probabilities P(X<=5) , P(X>=6) , P(6<=X<=9) , P(2<=X<=4)

prob_a = pbinom(5,25,0.1)   #gives binomial cumulative dist for x=5,n=25,p=0.1
prob_a

prob_b = 1 - pbinom(5,25,0.1)
prob_b

prob_c = pbinom(9,25,0.1) - pbinom(5,25,0.1)
prob_c

prob_d = pbinom(4,25,0.1) - pbinom(1,25,0.1)
prob_d


