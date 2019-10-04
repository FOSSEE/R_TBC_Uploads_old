obsereved_cell_number = c(120,60,10,10)
expected_cell_number=c(100,50,20,30)
# test statistic
Xsquare = 0
i=1
while(i<=length(obsereved_cell_number)){
  Xsquare=Xsquare+(((obsereved_cell_number[i]-expected_cell_number[i])^2)/expected_cell_number[i])
  i=i+1
}
print(Xsquare)
# critical value
alpha = 0.05
X.alpha=qchisq(1-alpha,df=3)
# The computed value of xsquare is greater than x.alpha, so we reject the null hypothes
 