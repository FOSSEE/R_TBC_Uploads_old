
# Chapter 4 
# Example 4.4 Page no. 115 from the pdf..
# Expected Value of a new Random Variable..

# given a probability distribution find a expected value of a new random variable 
# new random variable 2x-1

# P(X=x)
px <- c(1/12,1/12,1/4,1/4,1/6,1/6)

# x
x <- 4:9

# g(x)=2x-1

cat("The Attendant can expect to receive :",weighted.mean(2*x-1,px))



