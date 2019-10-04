
# Chapter 6
# Example 6.5 page no. 180 from the pdf..
# Find the Probability given Normal Distribution..

# X normal distribution,
# mu= 300, sigma= 50
# find P(X > 362)

cat("The probability that X assumes a value greater than 362 is",pnorm(362,mean = 300,sd = 50,lower.tail = F))


