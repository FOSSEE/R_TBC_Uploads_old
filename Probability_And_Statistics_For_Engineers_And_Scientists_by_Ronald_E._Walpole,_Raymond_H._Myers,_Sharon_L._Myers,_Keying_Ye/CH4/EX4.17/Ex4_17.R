
# Chapter 4
# Example 4.17 page no. 128 as given in the pdf..
# Expectation Value of Linear Combination Of Random Variables..

# given a random variable and its distribution find the value of E(2X-1)
# Refer example 4.4 on page 115 from the pdf..

px <- c(1/12,1/12,1/4,1/4,1/6,1/6)

x <- 4:9

cat("The value of E(2X-1) is",weighted.mean(2*x-1,px))

