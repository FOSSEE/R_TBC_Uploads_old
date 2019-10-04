# y denote the number of successes in the n sample trials,
# sample proportion
y=43
n=50
pie=y/n
sigma=sqrt((pie*(1-pie))/n)
alpha=0.025
z.alpha=qnorm(1-alpha)
error=z.alpha*sigma
#  95% confidence interval 
left_i=pie-error
right_i=pie+error
print(" Wald  95 % confidence interval")
print(left_i)
print(right_i)

# Using the WAC confidence interval, we need to compute:
ybar = y + 0.5*(z.alpha^2)
nbar = n + (z.alpha^2)
pie_bar=ybar/nbar


sigma_bar=sqrt((pie_bar*(1-pie_bar))/nbar)
error_bar=z.alpha*sigma_bar
left=pie_bar-error_bar
right=pie_bar+error_bar
print(" WAC 95% confidence interval")
print(left)
print(right)
