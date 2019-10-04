
# Chapter 5
# example 5.10, page no. 154 from the pdf..
# Hypergeometric Probability function..

# given - lot of 100 items in which 12 are defective..
# to find the prob. that in a sample of 10, 3 are defective..
# answer can be found using hypergeometric probability function

cat("The probability that in a sample of 10 =, 3 are found to be defective is",dhyper(3,m = 12,n = 88,k = 10))




