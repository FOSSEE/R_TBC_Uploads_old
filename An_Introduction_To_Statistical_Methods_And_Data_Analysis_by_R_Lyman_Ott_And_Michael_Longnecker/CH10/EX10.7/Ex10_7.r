pie1=94/125
pie2=113/175
# The sample awareness proportion is higher in Wichita, so let's make Wichita region 1.
#The estimated standard error is
sigma=sqrt(((pie1*(1-pie1))/125)+((pie2*(1-pie2))/175))
 
#test statistic
z=(pie1-pie2)/sigma
print(z)
alpha=0.05
z.alpha=qnorm(1-alpha)
zstar=qnorm(1-alpha/2)
# Since z   is greater than z.alpha, we reject H0 and conclude that the observations
#support the hypothesis
error=zstar*sigma
#  95% confidence interval 
left_i=(pie1-pie2)-error
right_i=(pie1-pie2)+error
print(left_i)
print(right_i)

