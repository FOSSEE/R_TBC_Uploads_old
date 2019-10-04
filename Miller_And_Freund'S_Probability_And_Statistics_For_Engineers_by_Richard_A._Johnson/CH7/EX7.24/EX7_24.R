mu0 =1600
sigma = 192
alpha= 0.05
mu1=1680
z0.05 = qnorm(1-0.05)
beta= 0.10
z0.10 = 1.28
n=(sigma*(z0.05+z0.10)/(mu0-mu1))^2
n
cat("There for the sample size is: ",n)