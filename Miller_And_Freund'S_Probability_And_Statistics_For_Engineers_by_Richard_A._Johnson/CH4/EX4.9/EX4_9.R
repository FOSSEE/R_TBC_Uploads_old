#binomial distribution(bd) and hypergeometric distribution(hd)
n=10#sample
x=2#2 defective out of 10
#a)hd
a=25#total defective
N=100#Toale tape
h=(choose(a,x)*choose(N-a,n-x))/choose(N,n)
message("probabilit is ",h)
#b)using bd
p=0.25#probability
dbinom(2,10,p)
