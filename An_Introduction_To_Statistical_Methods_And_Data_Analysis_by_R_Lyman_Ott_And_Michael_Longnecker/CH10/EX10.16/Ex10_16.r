low=c(250,750)
high=c(400,1600)
odds_ratio=(250/750)/(400/1600)
print(odds_ratio)
# We will next compute a 95% confidence interval for the odds ratio
a= log(odds_ratio)
sigma=sqrt(1/low[1]+1/low[2]+1/high[1]+1/high[2])
print(sigma)
# The 95% confidence interval for the odds ratio is obtained by first computing
error=1.96*sigma
left_i=a-error
right_i=a+error

print(left_i)
print(right_i)
print("confidence interval")
print(exp(left_i))
print(exp(right_i))