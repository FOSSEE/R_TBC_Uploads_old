
# Chapter 10
# Example 10.3 page no. 338 from the pdf..
# Test Concerning a Single Mean for Single Sample..

# Note - 10.1 and 10.2 are theoretical with nothing to Compute..

# given 
m <- 71.8

n <- 100

sd <- 8.9

alpha <- 0.05

# Null hypothesis, mean = 70years
# alternative mean > 70 years

sd1 <- sd/sqrt(n)

p_value <- 1 - pnorm((m-70)/sd1,0,1)

cat("The p-value is",p_value,",which is less than 0.05 level of significance hence we conclude the evidence favour alternative hypothesis more than null")



