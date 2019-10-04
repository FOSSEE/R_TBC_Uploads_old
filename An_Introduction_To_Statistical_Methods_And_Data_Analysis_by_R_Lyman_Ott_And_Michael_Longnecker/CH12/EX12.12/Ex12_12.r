# linear regression model : y= 0.15085 - 0.00288x1 - 0.00759x2 + 0.26528x3
SStotal=3.328
SSresidual=0.674
n=21
R2=(SStotal-SSresidual)/SStotal
print(R2)

#test statistic
F=(R2/3)/((1-R2)/(n-4))
print(F)
alpha=0.05
fvalue=qf(1-alpha,df1=3,df2 = 17)
print(fvalue)
# Because the computed F statistic, , is greater than fvalue, we reject H0 and
#conclude that one or more of the x values has some predictive power
