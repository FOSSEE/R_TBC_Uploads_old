y=1200
n=2500
pie=y/n
sigma=sqrt((pie*(1-pie))/n)
pie0=0.44
#test statistic
z=(pie-pie0)/sigma
print(z)
# critical value
alpha=0.05
z.alpha=qnorm(1-alpha)
#Because the observed value of z exceeds the critical value 1.645, we conclude that the
#percentage of students that participate in binge drinking exceeds the national percentage of 44%
nbar = n + (z.alpha^2)
pie_bar=(y+z.alpha)/nbar

sigma_bar=sqrt((pie_bar*(1-pie_bar))/nbar)
error_bar=z.alpha*sigma_bar
left=pie_bar-error_bar
right=pie_bar+error_bar
print(left)
print(right)
# the percentage of binge drinkers at the university is, with 95% confidence,between 46% and 50%
