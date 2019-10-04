

ybar = 380          # sample mean 
mu0 = 395             # hypothesized value 
sigma = 35.2           # population standard deviation 
n = 50                 # sample size 
z = abs((ybar- mu0)/(sigma/sqrt(n)))
 # test statistic
print(z)
# We then compute the critical value at .01 significance level.
alpha = .01 
# critical value
z.alpha = qnorm(1-alpha) 
print(z.alpha)
# computing Beta for hypothesized value
Beta_onetailedtest<-pnorm(z.alpha-z)
print(Beta_onetailedtest)
# power for test
powerfortest<-1-Beta_onetailedtest
print(powerfortest)
 
 
 
 

