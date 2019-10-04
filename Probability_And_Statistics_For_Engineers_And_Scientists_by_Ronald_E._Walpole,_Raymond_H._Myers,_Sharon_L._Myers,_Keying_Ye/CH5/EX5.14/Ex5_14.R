
# Chapter 5
# example 5.14 page no. 159 from the pdf..
# Negative Binomial Distribution Problem..

# given A has 0.55 prob. of winning over B

# prob. that A will win in 6 games given that if any team win 4 out 7 wins then that team winner

# using negative binomial distribution we get..

cat("The probability that A will win the series in 6 games is",dnbinom(2,4,0.55))

cat("The probability that team A will win the series is",pnbinom(3,4,0.55))
# for this atleast 4 matches to be won I can also use dnbinom but I have to sum all from size 4 to 7


# now A and B are playing and winning series decided by 3 wins out of 5 games

cat("The probability that A will win the playoff is",pnbinom(2,3,0.55))
    
#The answer in the textbook is approximated to 4 decimal places..