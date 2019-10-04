#Proportion of days have less than 3 claims
ppois(2,5)

dpois(4,lambda = 5)

#the probability that 3 of the next 5 days will have claims is
library(IPSUR)
choose(5,3) *(dpois(4,lambda = 5))^3 *(1-dpois(4,lambda = 5))^2