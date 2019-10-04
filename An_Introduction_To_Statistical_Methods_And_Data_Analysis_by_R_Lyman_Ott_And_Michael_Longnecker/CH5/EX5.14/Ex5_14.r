
ybar = 178.2           # sample mean 
mu0 = 190           # hypothesized value 
sigma = 45.3       # population standard deviation 
n = 100               # sample size 
z = (ybar- mu0)/(sigma/sqrt(n))
print(z)
k=abs(z)
# test statistic
 # formula based on level of significance
p_value=2*(1-pnorm(k))
print(p_value)
# mentioned p value in book is wrong
alpha=0.01
if(p_value>alpha){
  print("we fail to reject H0")
  print(" data do not support the research hypothesis(insufficient evidence).")
}else{
  print("  there is very little evidence in the data to support the research hypothesis  hence we will reject H0")
}
