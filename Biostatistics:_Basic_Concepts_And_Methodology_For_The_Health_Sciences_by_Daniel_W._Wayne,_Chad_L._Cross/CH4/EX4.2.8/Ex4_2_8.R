##Example 4.2.8 Pg.98
##mean and variance of prob distribution

x = 1:8
freq = c(62,47,39,39,58,37,4,11)
N = sum(freq)
prob_dist = freq/N
cum_dist = cumsum(prob_dist)
cdf = data.frame(x,freq,prob_dist,cum_dist)
cdf

mean = sum(x*prob_dist)
mean

variance = sum(x^2 * prob_dist) - mean^2
variance

sd = sqrt(variance)
sd

