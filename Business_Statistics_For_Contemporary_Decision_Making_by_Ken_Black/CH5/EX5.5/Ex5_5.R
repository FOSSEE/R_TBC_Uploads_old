# using Binomial Table :

n = 20
p = .10 
q = 1-p

x <- c(0,1,2,3)
c<-choose(n,x)*(p^x) * (q^(n-x))
c

#  Probability that fewer than four purchasers choose Oreos i.e. x<4 :
sum(c) # about 86.7% of the time fewer than four of the 20 will select Oreos


