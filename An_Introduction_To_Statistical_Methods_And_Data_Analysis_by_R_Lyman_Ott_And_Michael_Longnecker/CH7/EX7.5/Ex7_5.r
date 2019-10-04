 
y1bar=38.48
s1=16.37
n1=40
y2bar=26.93
s2=9.88
n2=40
# test statistic
F=s1^2/s2^2
print(F)
#critical value
alpha=0.05
f.alpha=qf(1-alpha/2,39,39)
# we reject H0 if F>=f.alpha
 
