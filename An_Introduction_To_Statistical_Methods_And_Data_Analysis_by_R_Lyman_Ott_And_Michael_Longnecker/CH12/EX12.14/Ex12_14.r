beta1=.01291
se=.00283
n=54
k=4
df=n-(k+1)
alpha=0.05
tvalue=qt(1-alpha,df)
print(tvalue)
left_i=beta1-tvalue*se
right_i=beta1+tvalue*se
print(" 95% confidence interval")
print(left_i)
print(right_i)