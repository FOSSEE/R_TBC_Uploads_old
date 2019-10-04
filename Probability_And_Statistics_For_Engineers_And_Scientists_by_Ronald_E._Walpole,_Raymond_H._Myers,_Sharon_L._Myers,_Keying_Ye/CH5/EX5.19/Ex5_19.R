
# Chapter 5
# ex. 5.19 page no. 164 from the pdf..
# Approximation of Binomial By a Poisson Distribution..

# given P(accident on given day)=0.005 and independent of each other..

# to find a. prob. of accident on 1 day from 400 days..

# this is the case of binomial distribution but in this case we can use poisson approx. 

# lambda= np=2 in this case..

# answer using binomial ..
cat("The probability that there will be accident on 1 day in a given period of 400 days is",dbinom(1,400,0.005))

# answer using poisson..
cat("Using poisson distribution the above answer becomes",dpois(1,2))
# so when n is very large and p is very small we can convert binomial to poisson..
# the margin of error is 1.2e-06 which negligible so we can use this conversion

# to find prob. of accident for atmost 3 days from 400 days..

# again we can use poisson here..

cat("The probability that there are atmost 3 days with an accident is",ppois(3,2))

# the answer in the T.B is approx. to 3 decimal places 0.857.

