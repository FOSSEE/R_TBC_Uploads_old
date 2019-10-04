#a)
n=5#no of trail
r=4#no of successor
p=0.6#probability of success
# Create the binomial distribution.
prob <- dbinom(r,n,p)#This function gives the 
#probability density distribution at each point
cat("The probability  is",prob)
#b)
#at least four of five installations
prob=dbinom(4,5,p)+dbinom(5,n,p)
cat("The probability bill reduce by one third is",prob)
