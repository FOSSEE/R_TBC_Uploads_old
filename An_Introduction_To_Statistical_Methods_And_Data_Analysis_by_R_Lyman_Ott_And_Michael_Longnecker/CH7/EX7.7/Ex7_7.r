
y1bar=20.04
s1=0.474
n1=10
y2bar=9.99
s2=0.233
n2=16
alpha=0.10
FU=qf(1-alpha/2,15,9)
FL=1/FU
# confidence interval for sigma1/sigma2
left_i=sqrt((s1^2/s2^2)*FL)
right_i=sqrt((s1^2/s2^2)*FU)
print(left_i)
print(right_i)
