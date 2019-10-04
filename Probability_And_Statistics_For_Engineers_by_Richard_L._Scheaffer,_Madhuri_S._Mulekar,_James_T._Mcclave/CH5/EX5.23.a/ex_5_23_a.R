# using hypergeometric distribution

#a
# the probability that all five boxes will fit properly = P(Y=0) = p(0)

cat("The probability that all five boxes will fit properly is", dhyper(0,2,18,5))
