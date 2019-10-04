# test statistic
t=.26528/.10127
print(t)
df=17
t1value=qt(1-0.01,df)
t2value=qt(1-0.005,df)
print(t1value)
print(t2value)
  #  Thus, H0 would be rejected at the alpha= .01 level but not at the alpha=  .005 level
pvalue =pt(-t, df)
print(pvalue)