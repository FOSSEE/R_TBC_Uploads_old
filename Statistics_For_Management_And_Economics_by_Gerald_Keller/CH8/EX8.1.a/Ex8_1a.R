# Statistics for Management and Economics by Gerald Keller
# CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.1a on Pg 267
# Uniformly Distributed Gasoline Sales 

#Uniformly Distributed Gasoline Sales ~ U(2000,5000)

#U(2000,5000) graph
curve(dunif(x, min = 2000, max = 5000), from = 0, to = 6000, ylab = "f(x)", main = "Uniform Density f(x)")

#a. Find the probability that daily sales will fall between 2,500 and 3,000 gallons
#denote p1 = P(2500 <= X <= 3000) = P(X <= 3000) - P(X < 2500)
# punif() fives the probability of Uniform dist below a specified number

p1 <- punif(3000, min=2000, max=5000) - punif(2500, min=2000, max=5000)

#Answer: 0.16667

#End
            