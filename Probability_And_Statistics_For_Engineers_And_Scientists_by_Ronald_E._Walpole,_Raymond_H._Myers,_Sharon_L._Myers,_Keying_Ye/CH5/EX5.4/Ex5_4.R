
# Chapter 5
# example 5.4 page no. 148 from pdf..
# Binomial Distribution problem

# given p = 0.3, n = 10, binomial distribution

cat("The probability that exactly 3 wells have the impurity assuming that the conjecture is correct is",dbinom(3,10,0.3))

# example 5.4 b part..

cat("The probability that more than 3 wells are impure is",pbinom(3,10,0.3,lower.tail = F))
# the answer in the T.B is approx. to 0.3504..

