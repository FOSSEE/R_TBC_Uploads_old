
# Chapter 6
# Example 6.17 page no. 197 from the pdf..
# Exponential Distribution Problem..

# given - T- time of failure
# T is exponential distribution beta=5
# find prob. that atleast 2 are functioning at the end of 8 years, if 5 of these components are taken..


bet <- 5

# first to find probability of a component functioning after 8 years


a <- pexp(8,rate=1/bet,lower.tail = F)

# finding total probability..

cat("The probability that atleast 2 are still functioning from 5 components after 8 years is",1-pbinom(1,5,a))

# the answer in the textbook is approximated to 0.2(P(T>8)) so there is also small error in the final probab.

# using computation we can reduce such error by a large extent..

