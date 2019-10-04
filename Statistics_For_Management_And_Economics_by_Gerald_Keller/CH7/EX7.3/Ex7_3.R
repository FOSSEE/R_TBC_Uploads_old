# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.3 on Pg. 224
# Describing the Population of the Number of Persons per Household 


#X is used to denote the random variable, the number of persons per household.
#Find the mean, variance, and standard deviation for the population of the number of persons per household 

Number_of_Persons <- c(1,2,3,4,5,6,7)
Number_of_Households <- c(31.1, 38.6, 18.8, 16.2, 7.2, 2.7, 1.4)

#we need Probability of X i.e., the relative frequency. Let it be denoted by P_X
P_X <- round(Number_of_Households/sum(Number_of_Households), digits=3)

E_X <- sum(P_X*Number_of_Persons)
V_X <- sum(((Number_of_Persons-E_X)^2)*P_X)
STDEV <- sqrt(V_X)

#Answer: E(X) = 2.512
        #Var(X) = 1.9539
        #Std deviation (X) = 1.3978


#End