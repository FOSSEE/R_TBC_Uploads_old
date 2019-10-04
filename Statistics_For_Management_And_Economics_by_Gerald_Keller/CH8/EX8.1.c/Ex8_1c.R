# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.1c on Pg 267
# Uniformly Distributed Gasoline Sales 


#Uniformly Distributed Gasoline Sales ~ U(2000,5000)

#c. What is the probability that the station will sell exactly 2,500 gallons?
# punif() fives the probability of Uniform dist below a specified number

p3 <- punif(2500, min=2000, max=5000) - punif(2499.999999999999999999999, min=2000, max=5000)
#Answer: 0

#End