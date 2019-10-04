# Binomial Disribution ex 2 :

p = .06
q = .94
n = 20

x <- c(0,1,2)
c<-choose(n,x)*(p^x) * (q^(n-x))
c
sum(c)

