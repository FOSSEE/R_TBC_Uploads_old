##Example 4.2.2 Pg.95
##Probability distribution from frequency table P(X=3)

x = 1:8
freq = c(62,47,39,39,58,37,4,11)
N = sum(freq)

prob_dist = freq/N
prob_dist
sum(prob_dist)

pdf = data.frame(x,freq,prob_dist)
pdf

prob_3 = pdf$prob_dist[x==3]  #gives the prob value at x=3 from the data frame
prob_3


