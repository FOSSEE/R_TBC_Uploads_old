# Statistics for Management and Economics by Gerald Keller
# CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.1b on Pg 267
# Uniformly Distributed Gasoline Sales 


#Uniformly Distributed Gasoline Sales ~ U(2000,5000)

# What is the probability that the service station will sell at least 4,000 gallons? 
# denote p2 = P(X >= 4000) = 1 - P(X<4000)
# punif() fives the probability of Uniform dist below a specified number

p2 <- 1-punif(4000, min=2000, max=5000)

#Answer: 0.33333

#End