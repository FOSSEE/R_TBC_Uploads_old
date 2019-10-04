
ybar = 31.2           # sample mean 
mu0 = 33            # hypothesized value 
sigma = 8.4       # population standard deviation 
n = 35                # sample size 
z = (ybar- mu0)/(sigma/sqrt(n))
# test statistic

p_value=pnorm(z)
print(p_value)
alpha=0.05
if(p_value>alpha){
  print("we fail to reject H0")
  print(" data do not support the research hypothesis(insufficient evidence).")
}else{
  print("reject H0")
}
