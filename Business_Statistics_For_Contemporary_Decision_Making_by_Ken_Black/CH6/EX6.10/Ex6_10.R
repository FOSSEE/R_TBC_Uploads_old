# Binomial distribution by using the normal distribution :

p = .37
n = 100
q=1-p
mean1 = n*p
mean1
sd = sqrt(n*p*q)
sd

#  range :
u = mean +3*(sd)
u
l = mean - 3*(sd)
l

x = 26.5
z=(x-mean)/sd
z

#  tail of the distribution : 
.5000-.4850

x1 <- c(26:20)
b<-dbinom(x1,n,p)
b
sum(b)