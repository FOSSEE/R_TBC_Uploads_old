
# Chapter 6
# Example 6.22 page no. 202 from the pdf..
# Lognormal Distribution Problem..

# given X= pollutant concentration,follows log normal distribution
# parameters of X- mu= 3.2 and sd = 1

# to find P(X>8)..?

#Using lognormal distribution

cat("The probability that the concentration exceeds 8 parts per million is",plnorm(8,meanlog = 3.2,sdlog = 1))

# the error in the T.B and computed answer is 0.0001621 which is very small and can be neglected..


