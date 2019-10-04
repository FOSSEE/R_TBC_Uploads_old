n = c(50,59,161,88,20,40,56,52,188,4,3,5,2,66,6)
E=c(67.5,67.5,135,37,37,74,74,74,148,3,3,6,18.5,18.5,37)
# test statistic
Xsquare = 0
i=1
while(i<=length( n)){
  Xsquare=Xsquare+(((n[i]-E[i])^2)/E[i])
  i=i+1
}
print(Xsquare)
# critical value
alpha = 0.001
X.alpha=qchisq(1-alpha,df=8)
# The computed value of xsquare is greater than x.alpha, so we reject the null hypothes

