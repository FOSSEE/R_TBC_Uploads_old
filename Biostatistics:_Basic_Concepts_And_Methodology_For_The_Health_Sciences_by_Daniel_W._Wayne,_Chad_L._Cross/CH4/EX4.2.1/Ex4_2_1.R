##Example 4.2.1 Pg.93
##Probability distribution from frequency table

x = 1:8
freq = c(62,47,39,39,58,37,4,11)
N = sum(freq)

prob_dist = freq/N
prob_dist
sum(prob_dist)

pdf = data.frame(x,freq,prob_dist)
pdf

barplot(prob_dist,names.arg = x, xlab="x(no. of assistance programs)",ylab="Probability")


