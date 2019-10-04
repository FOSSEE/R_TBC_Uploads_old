#Test for two types of Drivers 
#Drivers with 0 Blood Alcohol
n1 = 54
xbar = 1.63
s1 = 0.177
#Drivers with 0.1 % Blood Alcohol
n2 = 54
ybar = 1.77
s2 = 0.183
z.alpha=qnorm(0.01)
z.alpha
#delta = mu1 - mu2
#Null hypothesis: delta  = 0 there is no difference in mean of drivers
#Alternative hypothesis: delta != 0 there is difference in means of driver
#Level of significance= 0.02
#Criterion: Reject the null hypothesis if Z < -2.33 or Z > 2.33.
Z=(xbar-ybar)/sqrt((s1^2/n1)+(s2^2/n2))
Z
cat("Since z = -4.04 is less than -2.33, the null hypothesis must be
rejected at level of significance 0.02")

