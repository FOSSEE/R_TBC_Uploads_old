xbar=3.9
mu=4.5
sigma=1.5
n=25
Z=(xbar-mu)/(sigma/sqrt(n))
Z
P=pnorm(Z)
P
cat("There the probability that the value of z is -2 is 0.0227")
message("There for the p value is: ",2*P)