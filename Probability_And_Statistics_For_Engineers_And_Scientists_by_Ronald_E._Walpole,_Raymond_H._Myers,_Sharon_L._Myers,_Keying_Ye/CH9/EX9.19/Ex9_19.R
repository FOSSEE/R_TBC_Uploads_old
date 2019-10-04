
# Chapter 9
# Example 9.19 page no. 306 from the pdf..
# To find Confidence Interval For the Ratio of 2 Variances..

# to find 98% confidence interval of 2 independent sample variances..
n1 <- 15

n2 <- 12

s1 <- 3.07

s2 <- 0.80

f1 <- qf(0.99,14,11)

f2 <- qf(0.99,11,14)

cat("The 98% confidence interval for the ratio sigma1/sigma2 is",sqrt(s1*s1/(s2*s2*f1)),sqrt(s1*s1*f2/(s2*s2)))

