
ybar = 105.75          # sample mean 
mu0 = 75           # hypothesized value 
sigma = 82.429     # population standard deviation 
n = 20              # sample size 
# test statistic
t = abs((ybar- mu0)/(sigma/sqrt(n)))
 print(t)

# formula based on level of significance
 m=33
 B=1000
p_value= m/B
 print(p_value)
alpha=0.05
# our p value< alpha , therfore
print("we conclude that there is sufficient evidence that the mean cotanine level exceeds 75 in the population of children under CPS supervision")
 
