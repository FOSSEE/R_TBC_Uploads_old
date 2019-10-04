# Statistics for Management and Economics by Gerald Keller
# Chapter 10: Introduction to Estimation
# Example 10.1 on Pg 342
# Doll Computer Company 

data1 <- c(235, 374, 309, 499, 253, 421, 361, 514, 462, 369, 394, 439, 
           348, 344, 330, 261, 374, 302, 466, 535, 386, 316, 296, 332, 334)
data1
mean1 <- mean(data1)
mean1
alpha = 0.05
library(stats)
std1 = 75
std2 <- sd(data1)
std2

ll <- mean1 - 1.96*75/(sqrt(25))
ul <- mean1 + 1.96*75/(sqrt(25))                            

cat("The 95% confidence interval is:","(",ll, ul,")")  

#End
