beta1=.2652
se=.1012
n=21
k=3
df=n-(k+1)
alpha=0.025
tvalue=qt(1-alpha,df)
print(tvalue)
left_i=beta1-tvalue*se
right_i=beta1+tvalue*se
print(" 95% confidence interval")
print(left_i)
print(right_i)