##Example 4.2.6 Pg.97
##Cumulative probability distribution and p(X>=5) = 1 - P(X<=4)

x = 1:8
freq = c(62,47,39,39,58,37,4,11)
N = sum(freq)
prob_dist = freq/N
cum_dist = cumsum(prob_dist)
cdf = data.frame(x,freq,prob_dist,cum_dist)
cdf

ans = 1 - cdf$cum_dist[x==4]
ans


