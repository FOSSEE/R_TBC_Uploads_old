
# Chapter 9
# Example 9.11 page no. 288 from the pdf..
# COnfidence Interval Evaluation Using Pooled Estimate of Variance..

# to find the 90% confidence interval of the given data

# the variance of both sampling stations are equal and and independent
n1 <- 12

x1 <- 3.11

s1 <- 0.771

n2 <- 10

x2 <- 2.04

s2 <- 0.448

# WE NEED to find pooled estimate for equal variances..

sp <- sqrt(((n1-1)*s1*s1+(n2-1)*s2*s2)/(n1+n2-2))

dfs <- n1+n2-2

c <- qt(0.95,dfs)*sp*sqrt((1/n1)+(1/n2))

cat("The 90% confidence interval for mu1-mu2 is",x1-x2-c,x1-x2+c)

# the answer in the textbook is approximated to 3 decimal places..

