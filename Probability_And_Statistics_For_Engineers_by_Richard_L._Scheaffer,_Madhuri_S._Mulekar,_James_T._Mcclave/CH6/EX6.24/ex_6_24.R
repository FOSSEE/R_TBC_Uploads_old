
# Let X denote the proportion of the total supply sold in a given week
# Given alpha = 4, beta = 2

# Using beta distribution

#a
cat(" The expected proportion of supply sold in a given week is ", 4/(4+2))

#b
cat("P(X>0.90) = 1 - P(X<=0.90) =", 1 - pbeta(0.90,4,2))
cat("It is not very likely that 90% of the stock will be sold in a given week. ")    