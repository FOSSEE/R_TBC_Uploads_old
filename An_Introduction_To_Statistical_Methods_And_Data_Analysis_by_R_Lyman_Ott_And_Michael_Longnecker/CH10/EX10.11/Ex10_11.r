yi=c(0,1,2,3,4,5,6,7)
ni=c(6,23,29,31,27,13,8,13)
n=sum(ni)
ybar=sum(yi*ni)/sum(ni)
print(ybar)
# ybar value in book is calculated wrong
# The Poisson probabilities
Pyi=c(dpois(0,ybar),dpois(1,ybar),dpois(2,ybar),dpois(3,ybar),dpois(4,ybar),dpois(5,ybar),dpois(6,ybar),dpois(7,ybar))
print(Pyi)
# Expected cell count
Ei=n*Pyi
print(Ei)

# test statistic
i=1
X2=0
while(i<9){
  X2=X2+(((ni[i]-Ei[i])^2)/Ei[i])
  i=i+1
}
print(X2) # ans in book is calculate wrong
df=6

pvalue=pchisq(X2,df,lower.tail = FALSE)
print(pvalue)
# as p-value <=.01 model is   Poisson model provides an Unacceptable fit to data

           