beta1=.01291
se=.00283
# test statistic
t=beta1/se
print(t)
n=54
k=4
df=n-(k+1)
alpha=0.05
tvalue=qt(1-alpha,df)
 #the computed value of the test statistic > tvalue . we conclude there is significant evidence to reject H0