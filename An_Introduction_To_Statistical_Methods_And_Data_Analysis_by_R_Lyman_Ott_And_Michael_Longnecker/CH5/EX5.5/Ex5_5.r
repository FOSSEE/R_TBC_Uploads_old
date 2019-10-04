# Hypothesis Testing or  one-tailed test 
 
ybar = 573            # sample mean 
 mu0 = 520              # hypothesized value 
 sigma = 124           # population standard deviation 
 n = 36                 # sample size 
 z = (ybar- mu0)/(sigma/sqrt(n))
 print(z) # test statistic
 
 # We then compute the critical value at .025 significance level.
 #  For alpha= .025, reject the null hypothesis if lies more than 1.96 
  alpha = .025 
 z.alpha = qnorm(1-alpha) 
  print(z.alpha)
   