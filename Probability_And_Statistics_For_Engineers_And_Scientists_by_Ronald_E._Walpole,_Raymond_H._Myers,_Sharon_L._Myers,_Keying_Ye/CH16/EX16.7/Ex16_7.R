
# Chapter 16
# Example 16.7 page no. 672 from the pdf..
# Runs Test..

# to do hypothesis testing of randomness of the sequence..

# Null :H0= sequence is random
# alternate: H1= sequence is is not random..

# package used - "randtests", referance - internet..
install.packages("randtests") # package for runs.test
# comment it if already installed..

library("randtests") 

content <- c(3.6,3.9,4.1,3.6,3.8,3.7,3.4,4.0,3.8,4.1,3.9,4.0,3.8,4.2,4.1)

runs.test(content,alternative = "two.sided")


cat("The p-value is more than 0.1 we don't reject the null and conclude that sequence of measured values varies randomly")
