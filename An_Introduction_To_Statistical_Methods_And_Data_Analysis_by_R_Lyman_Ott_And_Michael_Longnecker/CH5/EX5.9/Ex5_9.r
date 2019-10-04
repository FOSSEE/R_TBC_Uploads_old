 

ybar = 31.2          # sample mean 
mu0 = 33            # hypothesized value 
sigma = 8.4         # population standard deviation 
n = 35                # sample size 
z = (ybar- mu0)/(sigma/sqrt(n))
print(z) # test statistic

# We then compute the critical value at .05 significance level.
# For alpha = .05, we will reject the null hypothesis if z <= -1.645
alpha = .05 
z.alpha = qnorm(1-alpha) 
#  the observed value of z  is not less than -z.alpha, the test statistic does not fall in the rejection region.  


