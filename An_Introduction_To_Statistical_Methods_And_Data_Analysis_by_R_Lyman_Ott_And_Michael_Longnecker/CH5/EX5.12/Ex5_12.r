 
ybar = 390           # sample mean 
mu0 = 380            # hypothesized value 
sigma = 35.2        # population standard deviation 
n = 50                 # sample size 
z = (ybar- mu0)/(sigma/sqrt(n))
 # test statistic

p_value=1-pnorm(z)
print(p_value)
alpha=0.01
if(p_value>alpha){
  print("we fail to reject H0")
print(" data do not support the research hypothesis.")
 }else{
   print("reject H0")
     }
