
# Chapter 8 
# Example 8.5 page no. 237 from the pdf..
# Central limit theorem..

# mu= 28, sd= 5,n= 40, to find prob. that averagetransport time greater than 30 min..

# P(Xbar > 30)


cat("The probability that the average transport time was more than 30 min. is",pnorm(30+0.5,mean = 28,sd= 5/sqrt(40),lower.tail = F))




