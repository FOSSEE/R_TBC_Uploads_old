# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.10 on Pg. 247
# Will Pat Fail the Quiz? 


# Find the probability that Pat fails the quiz. A mark is considered a failure if it is less than 50%
# n=10 iid trials. probability of each success is 1/5. Binomial distribution is apt.

#dbinom() function for Binomial 
p0 <- dbinom(0, 10, 0.2) #x=0, n=10, p=0.2
p1 <- dbinom(1, 10, 0.2) #x=1, n=10, p=0.2
p2 <- dbinom(2, 10, 0.2) #x=2, n=10, p=0.2
p3 <- dbinom(3, 10, 0.2) #x=3, n=10, p=0.2
p4 <- dbinom(4, 10, 0.2) #x=4, n=10, p=0.2

cat("P(Pat fails the quiz) =", sum(p0,p1,p2,p3,p4))

#Answer: 0.96721

#End