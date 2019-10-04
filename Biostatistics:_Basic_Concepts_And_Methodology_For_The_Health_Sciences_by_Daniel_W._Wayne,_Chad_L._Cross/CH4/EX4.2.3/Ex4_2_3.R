##Example 4.2.3 Pg.95
##Prob that family used either one or two programs

x = 1:8
freq = c(62,47,39,39,58,37,4,11)
N = sum(freq)

prob_dist = freq/N
prob_dist
sum(prob_dist)

pdf = data.frame(x,freq,prob_dist)
pdf

prob_1 = pdf$prob_dist[x==1]
prob_2 = pdf$prob_dist[x==2]
prob_1U2 = prob_1 + prob_2 #additive rule of mutually exclusive events
prob_1U2



