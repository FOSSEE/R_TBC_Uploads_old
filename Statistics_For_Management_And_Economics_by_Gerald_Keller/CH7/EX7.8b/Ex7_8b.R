# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.8b on Pg. 239
# Describing the Population of the Returns on a Portfolio 

#Given: 

w1 = 0.25
w2 = 0.75
s1 = 0.12 #Standard Deviation of stock McD
s2 = 0.22 #Standard Deviation of stock Cisco

StandardDev <- function(Rho)
{
  return(sqrt(w1^2*s1^2 + w2^2*s2^2 + 2*w1*w2*Rho*s1*s2))
}

cat ("standard deviation of the returns on the portfolio, when the two stocks' returns are perfectly positively correlated, is:", 
     StandardDev(1))
#Answer: 0.195

cat ("standard deviation of the returns on the portfolio, when the coefficient of correlation is 0.5, is:", 
     StandardDev(0.5))
#Answer: 0.1819

cat ("standard deviation of the returns on the portfolio, when the two stocks' returns are uncorrelated, is:",
     StandardDev(0))
#Answer: 0.1677

#End
