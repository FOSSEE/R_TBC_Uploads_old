# Large-Sample Approximation 
n=25
B=13
# test statstic
Bst=(B-(n/2))/(sqrt(n/4))
print(Bst)
# critical value
alpha=0.05
z.alpha=qnorm(1-alpha/2)
print(z.alpha)
print("e BST is not greater than z.alpha, we fail to reject H0")
pvalue=1-pnorm(Bst)
print(pvalue)
