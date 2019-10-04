#  confidence interval for the ratio of the two variances

y1bar=38.48
s1=16.37
n1=40
y2bar=26.93
s2=9.88
n2=40
alpha=0.05
FU=qf(1-alpha/2,39,39)
FL=1/FU
 
# confidence interval for sigma1^2/sigma2^2
left_i=(s1^2/s2^2)*FL
right_i=(s1^2/s2^2)*FU
print(left_i)
print(right_i)