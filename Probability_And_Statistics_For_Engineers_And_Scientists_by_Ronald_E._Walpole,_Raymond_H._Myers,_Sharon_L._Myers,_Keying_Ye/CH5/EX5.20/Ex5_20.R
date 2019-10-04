
# Chapter 5
# example 5.20 page no. 164 from the pdf..
# Approximation of Binomial By a Poisson Distribution..

# 1 in every 100 items produced has one or more bubbles means p = 0.001..
# to find the prob. that a random sample of 8000 will yield fewer than 7 items processing bubbles,
# in short find P(X < 7)

# since p is very close to 0 and n is very large we can approx. it with Poisson distribution..

cat("The prob. that the random sample of 8000 will yield fewer than 7 items possessing bubbles is",ppois(6,8))



