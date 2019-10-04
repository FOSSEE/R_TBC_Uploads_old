
# Using binomial distribution
#b

mean <- 4
Theeta <- 1/mean
a <- 1 - pexp(5, rate = Theeta)

cat(" the probability that exactly two of the three plants process more than 5 tons of raw sugar on a given day" 
    , dbinom(2,3,prob = a) )