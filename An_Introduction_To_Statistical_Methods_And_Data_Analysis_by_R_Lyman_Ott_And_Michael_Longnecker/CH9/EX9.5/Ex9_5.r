si=c(.1204,.1269,.1196,.1249,.1265)
# data fom example 9.3
Fmax=max(si)^2/min(si)^2
print(Fmax)
# four test statistic
SSC1=.2097 # these value are computed in 9.3
SSC2=.1297
SSC3=.0037
SSC4=.0217
MSError=.0153
F1=SSC1/MSError
F2=SSC2/MSError
F3=SSC3/MSError
F4=SSC4/MSError

print(F1)
print(F2)
print(F3)
print(F4)

alpha=0.05
df1=1
df2=25
F_0.05_1_25=qf(1-alpha,df1,df2)
print(F_0.05_1_25)

# we conclude that contrasts l1 and l2 were significantly
#different from zero but contrasts l3 and l4 were not significantly different from zero.

