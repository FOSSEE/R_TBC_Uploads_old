beta1=-7.859 # caclulated in 11.4
error=1.090  
alpha=0.05/2
df=18
t.alpha=qt(1-alpha,df)
print(t.alpha)
# corresponding confidence interval for the true value of beta1
left_i=beta1-t.alpha*error
right_i=beta1+t.alpha*error
print("confidence interval")
print(left_i)
print(right_i)
