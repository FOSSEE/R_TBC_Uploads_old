# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.9a on Pg. 246
# Pat Statsdud and the Statistics Quiz 


# What is the probability that Pat gets no answers correct? 
# n=10 iid trials. probability of each success is 1/5. Binomial distribution is apt.

#dbinom() function for Binomial 
ans <- dbinom(0, 10, 0.2) #x=0, n=10, p=0.2

cat("P(Pat gets no answers correct) =", ans)

#Answer: 0.10737

#End

