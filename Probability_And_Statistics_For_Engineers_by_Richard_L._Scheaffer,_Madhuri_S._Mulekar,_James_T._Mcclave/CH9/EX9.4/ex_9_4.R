#Confidence interval evalualtion
#For confidence coefficient to be 95%, , it leaves (1 - 0.025 = 0.975) area to the left

n <- 50

mu <- 2.268

sig <- 1.932

a <- qnorm(0.975)*sig/sqrt(n)


cat("The 95% confidence interval for the above parameters is",mu-a,mu+a," hours")