mu0 =100
mu1= 103
sd=4
alpha = beta =0.01
n = ((qnorm(alpha)+qnorm(beta))^2)*sd*sd/((mu1 - mu0)^2)
cat("By taking ",ceiling(n),"measurements, we can reduce to 0.01 while also holding at 0.01. ")
