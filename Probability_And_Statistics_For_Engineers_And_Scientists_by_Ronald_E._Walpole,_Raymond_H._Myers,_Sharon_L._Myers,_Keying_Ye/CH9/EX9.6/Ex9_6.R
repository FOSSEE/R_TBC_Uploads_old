
# Chapter 9
# Example 9.6 page no. 276 from the pdf..
# To Find 99% Confidence Interval..

# to find 99% confidence interval on the mean SAT maths score.
# Since random sample is large 500 we can use normal approximation..

mu <- 501

sd <- 112

n <- 500

sd1 <- sd/sqrt(n)

cat("The 99% confidence interval for the above example is",mu+qnorm(0.005)*sd1, mu-qnorm(0.005)*sd1)
