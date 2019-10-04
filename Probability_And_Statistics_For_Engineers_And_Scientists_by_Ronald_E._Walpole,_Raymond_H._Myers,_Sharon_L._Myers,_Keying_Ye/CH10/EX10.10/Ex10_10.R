
# Chapter 10
# Example 10.10 page no. 362 from the pdf..
# One Sample Test on a Single Proportion..

# Null - p = 0.6
# alternative - p > 0.6
# alpha = 0.05.
# critical region - z>1.645

# using binomial approximation..


ans <- pnorm(0.7,mean = 0.6,sd=sqrt(0.6*0.4/100),lower.tail = F)

cat("The p_value is",ans,"we reject null hypothesis and conclude that the new drug is superior")


