n = c(15,32,18,5,8,29,23,18,1,20,25,22)
E=c( 7.78,26.25,21.39,14.58,8.67,29.25,23.83,16.25,7.56,25.50,20.78,14.17)
# test statistic
Xsquare = 0
i=1
while(i<=length( n)){
  Xsquare=Xsquare+(((n[i]-E[i])^2)/E[i])
  i=i+1
}
print(Xsquare)
# critical value
alpha = 0.05
X.alpha=qchisq(1-alpha,df=6)
# The computed value of xsquare is greater than x.alpha, so we reject the null hypothes

