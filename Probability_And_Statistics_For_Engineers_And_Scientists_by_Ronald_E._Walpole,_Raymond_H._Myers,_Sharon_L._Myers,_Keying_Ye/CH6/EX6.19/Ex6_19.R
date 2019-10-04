
# Chapter 6
# Example 6.19 page no.198 from the pdf..
# Application of Gamma Distribution..

# given - X is survival time..has gamma distribution with
# alpha = 5, beta =10

# find P(rat survives <=60) or P(X<=60)

# using gamma distribution..


cat("The probability that the rat survives no longer than 60 days is",pgamma(60,shape=5,scale= 10))

# The answer in the T.B is approx. to 3 decimal places..




