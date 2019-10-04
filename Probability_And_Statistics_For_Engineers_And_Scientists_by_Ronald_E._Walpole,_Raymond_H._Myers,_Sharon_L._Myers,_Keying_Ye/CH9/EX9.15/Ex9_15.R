
# Chapter 9
# Example 9.15 page no. 299 from the pdf..
# Evaluate sample size for estimating a Proportion for Single Sample..

# to find the sample size required to be 95% confident that our estimate of p in ex9.14 is within 0.02 of the true value..
# Refer example 9.14 page no. 297 from the pdf..

n <- 500

x <- 340

p_hat <- x/n

e <- 0.02

sample_size <- qnorm(0.975)^2*p_hat*(1-p_hat)/(e^2)

cat("If we base our estimate of p on a random sample of size",as.integer(sample_size)+1,"we can be 95% confident that our sample proportion will not differ from the true proportion by more than 0.02")

