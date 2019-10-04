s=c(8.69, 6.89, 80.22)
s_min=min(s)
s_max=max(s)
#test statistic
F=s_max/s_min
print(F)

# critical value
alpha=0.05
df=8
F.alpha=qnorm(alpha/2,8)
print(F.alpha)

# Reject H0 if F >=F.alpha
# conclusion : Thus, we reject H0 and conclude that the variances are not all equa