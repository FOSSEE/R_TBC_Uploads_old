# Statistics for Management and Economics by Gerald Keller
# Chapter 9: Sampling Distributions
# Example 9.2 on Pg 326
# Political Survey 


# Given number of respondents who would vote ~ Binomial(300,0.52)
n = 300
p = 0.52

# what is the probability that the sample proportion is greater than 50% i.e., P(p^ > 0.5)
# We know that sample proportion ~ Normal(p, sd) where p = 0.52 and sd = sqrt(p*(1-p)/n)
 
sigma = sqrt(p*(1-p)/n)
#Answer: Sigma = 0.02884441

p1 = 1 - pnorm(0.5, mean=0.52, sd=sigma)
cat("P(p^ > 0.5):", p1)

#Answer:  0.755963

#Book's answer slightly different: 0.7549

#End