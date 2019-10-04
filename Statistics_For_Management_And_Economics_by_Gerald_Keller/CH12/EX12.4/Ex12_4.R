# Statistics for Management and Economics by Gerald Keller
# Chapter 12: INFERENCE ABOUT A POPULATION
# Example 12.4 on Pg. 418
# Consistency of a Container-Filling Machine, Part 2 

data1 <- c(999.6, 1000.7, 999.3, 1000.1, 999.5, 1000.5, 999.7, 999.6, 999.1, 997.8,
           1001.3, 1000.7, 999.4, 1000.0, 998.3, 999.5, 1000.1, 998.3, 999.2, 999.2,
           1000.4, 1000.1, 1000.1, 999.6, 999.9)
data1
mean1 <- mean(data1)
mean1
popmean = 1 #Null Hypothesis: H0: population mean = 1
n <- length(data1)
n
library(stats)
stdev1 <- sd(data1)
stdev1

chistat <- (n-1)*stdev1^2/popmean
chistat

chisqalphaby2 <- qchisq(0.005, df=(n-1), lower.tail=FALSE) 
chisq1minusalphaby2 <- qchisq(0.995, df=(n-1), lower.tail=FALSE) 

lcl <- (n-1)*stdev1^2 / chisqalphaby2
lcl
ucl <- (n-1)*stdev1^2 / chisq1minusalphaby2
ucl

cat("The 99% confidence interval is:", "(", round(lcl,3), ",", round(ucl,3),")" )                    
#Answer: (0.333, 1.537)
  
#End