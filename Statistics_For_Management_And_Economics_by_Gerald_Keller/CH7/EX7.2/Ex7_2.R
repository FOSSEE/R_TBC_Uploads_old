# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.2 on Pg. 221
# Probability Distribution of the Number of Sales 

# Denote:
# X = the number of sales
# prob = P(success) = 0.2
# q = P(failure) = 0.8
# three trials

ProbofSales <- function(q)
{
  p = pbinom(q, size = 3, prob = 0.2, lower.tail = TRUE)
  return(p)
}

#p_0 = P(X=0)
p_0 = ProbofSales(0)
#p_1 = P(X=1)
p_1 = ProbofSales(1) - p_0
#p_2 = P(X=2)
p_2 = ProbofSales(2) - ProbofSales(1)
#p_3 = P(X=3)
p_3 = ProbofSales(3) - ProbofSales(2)

cat("The Probability Distribution of number of Sales:")
cat("P(Number of Sales is 0):", p_0) #Answer: 0.512
cat("P(Number of Sales is 1):", p_1) #Answer: 0.384
cat("P(Number of Sales is 2):", p_2) #Answer: 0.096
cat("P(Number of Sales is 3):", p_3) #Answer: 0.008

#End