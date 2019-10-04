# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.1 on Pg. 220
# Probability Distribution of Persons per Household 

#X is used to denote the random variable, the number of persons per household.
#Develop the probability distribution of X.

Number_of_Persons <- c(1,2,3,4,5,6,7)
Number_of_Households <- c(31.1, 38.6, 18.8, 16.2, 7.2, 2.7, 1.4)

#we need Probability of X i.e., the relative frequency. Let it be denoted by P_X

P_X <- round(Number_of_Households/sum(Number_of_Households), digits=3)

#Answer: P(X): 0.268 0.333 0.162 0.140 0.062 0.023 0.012

#End