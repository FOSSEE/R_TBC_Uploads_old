#Geometric Distribution
#it deals with the number of trials required for a single success
#the geometric distribution is a negative binomial distribution
options(digits = 2)
p=0.05
x=6
#by function
dgeom(x, prob = p)
#by formula
g=p*(1-p)^(x-1)
g
cat("Probability that 6 measuring device show excessive brift is",g)
