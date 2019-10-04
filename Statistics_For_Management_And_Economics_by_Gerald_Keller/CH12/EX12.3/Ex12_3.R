# Statistics for Management and Economics by Gerald Keller
# Chapter 12: INFERENCE ABOUT A POPULATION
# Example 12.3 on Pg 415
# Consistency of a Container-Filling Machine, Part 1 

data1 <- c(999.6, 1000.7, 999.3, 1000.1, 999.5, 1000.5, 999.7, 999.6, 999.1, 997.8,
           1001.3, 1000.7, 999.4, 1000.0, 998.3, 999.5, 1000.1, 998.3, 999.2, 999.2,
           1000.4, 1000.1, 1000.1, 999.6, 999.9)
data1
mean1 <- mean(data1)
mean1
popmean = 1 #Null Hypothesis: H0: population mean = 1 (sigma^2 =1)
n <- length(data1)
n #sample size = 25
library(stats)
stdev1 <- sd(data1)
stdev1 #Answer: 0.7958
stdev1^2 #Answer: 0.6333

chistat <- (n-1)*stdev1^2/popmean
chistat #Answer: Chi-square test statistic = 15.20

#One-Sample Chi-Squared Test On Variance,  using varTest()
install.packages("EnvStats")
library(EnvStats)
result <- varTest(data1, alternative = "greater", conf.level = 0.95, sigma.squared = 1) 

#Answer:

#Results of Hypothesis Test
#--------------------------
  
#Null Hypothesis:                 variance = 1
#Alternative Hypothesis:          True variance is greater than 1
#Test Name:                       Chi-Squared Test on Variance
#Estimated Parameter(s):          variance = 0.6333333
#Data:                            data1
#Test Statistic:                  Chi-Squared = 15.2
#Test Statistic Parameter:        df = 24
#P-value:                         0.9147699
#95% Confidence Interval:         LCL = 0.4174101 UCL =       Inf

if(result$p.value > 0.05)
{
  print("there is NOT enough evidence to infer that the claim of sigmasquared = 1 is true.")
} else 
{
  print("there is enough evidence to infer that the claim of sigmasquared = 1 is true.")
}

#End