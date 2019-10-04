# two tailed test
ybar = 178.2            # sample mean 
mu0 = 190             # hypothesized value 
sigma = 45.3          # population standard deviation 
n = 100                 # sample size 
# We  compute the critical value at .025 significance level.
alpha = .05 
z.half.alpha = qnorm(1-alpha/2) 
# critical values
lr=mu0-(z.half.alpha*sigma)/sqrt(n)
ur=mu0+(z.half.alpha*sigma)/sqrt(n)
paste0(" lower rejection = ",lr)
paste0("upper rejection = ",ur)
z = (ybar- mu0)/(sigma/sqrt(n))
print(z) # test statistic

 print("The test statistic doesnot lies between the critical values(i.e. |z|>critical value). Hence, at .025 significance level, we  reject the null hypothesis")
