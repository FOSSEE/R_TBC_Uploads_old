
# Chapter 5
# example 5.12, page no. 155 from the pdf..
# Relation Between Hypergeometric and Binomial Distribution..

# given - out of 5000, 1000 are slightly blemished..
# to find the prob. that exactly 3 are blemished if one purchases 10 tires at random

# since the N is large (5000) relative to sample size 10 we can do approx. to binomial distribution..


cat("The probability of obtaining exactly 3 blemished tires from 10 randomly purchased samples is",dbinom(3,10,0.2))


