# CHI-SQUARE GOODNESS OF-FIT TEST : X_sq = sum((fo-fe)^2/fe)
# df = k-1-c
Month <- c("January","February","March","April","May","June","July","August","September","October","November","December")
fo <- c(1610,1585,1649,1590,1540,1397,1410,1350,1495,1564,1602,1655)

# critical value of chi-square when alpha is 0.01 :
qchisq(.99, df=11) 


fe <- sum(fo)/12
for(i in 1:12){
  X = (fo-fe)^2/fe
}
print(X)

# Observed chi-square value :
X_sq = sum(X)
X_sq

Month <- cbind(Month,fo,fe,X)
Month

# The observed value of chi-square is 74.37, greater than the critical table value i.e. 24.725, 
# so the decision is to reject the null hypothesis. This problem provides enough 
# evidence to indicate that the distribution of milk sales is not uniform. 
