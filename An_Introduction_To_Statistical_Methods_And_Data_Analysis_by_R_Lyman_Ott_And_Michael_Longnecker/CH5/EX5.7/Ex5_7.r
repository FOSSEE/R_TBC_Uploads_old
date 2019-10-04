  

ybar = 390          # sample mean 
mu0 = 380              # hypothesized value 
sigma = 35.2           # population standard deviation 
n = 50                 # sample size 
z = (ybar- mu0)/(sigma/sqrt(n))
print(z) # test statistic

# We then compute the critical value at .01 significance level.
#  For alpha= .01, reject the null hypothesis if lies more than 2.33 
alpha = .01 
# critical value
z.alpha = qnorm(1-alpha) 
print(z.alpha)
print("the observed value of z < critical value,  so we might be tempted to accept the null hypothesis") 
#  but Beta is not computed so  there is insufficient evidence to reject the null hypothesis.
# To reach a conclusion about whether to accept or reject  H0, beta should be calculated.
