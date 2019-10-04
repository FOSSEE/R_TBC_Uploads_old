# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.4 on Pg. 225
# Describing the Population of Monthly Profits 

#Given: 
mean_sales = 25000  #mean of monthly sales at a computer store 
stdev_sales = 4000 #standard deviation of monthly sales at a computer store 

#Given fixed cost:
fc = 6000 

#Laws of Expected Value: E(c) = c; E(X + c) = E(X) + c; E(cX) = c*E(X)
#Laws of Variance: V(X + c) = V(X);  V(cX) = c^2*V(X); V(c)=0

#Given: Profit = 0.3*Sales - fixed cost.

#Applying the laws of expected value, E(Profit) = 0.3*E(Sales) - 6000
#Applying the laws of variance, V(Profit) = V(0.30(Sales) - 6,000) = 0.09V(Sales)

expected_profit = 0.3*mean_sales - fc
#Answer: 1500
stdev_profit = sqrt(0.09*stdev_sales^2)
#Answer: 1200

#End
