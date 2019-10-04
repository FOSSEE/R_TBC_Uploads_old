##Example 4.2.5 Pg.97
##Cumulative probability distribution and p(X<4)=P(X<=3)

x = 1:8
freq = c(62,47,39,39,58,37,4,11)
N = sum(freq)
prob_dist = freq/N
cum_dist = cumsum(prob_dist)
cdf = data.frame(x,freq,prob_dist,cum_dist)
cdf

cdf_3 = cdf$cum_dist[x==3]
cdf_3


