y=50
n=50
alpha=.05
# If we used the standard estimator of pie
pie=y/n
#  The point estimator would be given by
pie_adj=(n+(3/8))/(n+(3/4))
print(pie_adj)
# A 95% confidence interval for pie would be
left_i=(alpha/2)^(1/n)
right_i=1
print(left_i)
print(right_i)
