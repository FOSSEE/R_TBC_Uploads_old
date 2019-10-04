readings=c(203.1, 184.5, 206.8 ,211.0 ,218.3, 174.2, 193.2 ,201.9 ,199.9 ,194.3,
           199.4, 193.6, 194.6 ,187.2 ,197.8 ,184.3, 196.1, 196.4 ,197.5 ,187.9)
n=length(readings)
ybar=mean(readings)
s=sd(readings)
muo=5
# test static
X=(n-1)*(s^2)/(muo^2)
print(X)
#critical value
alpha=0.05
X.alpha=qchisq(1-0.05,df=19)
 
# the null hypothesis, H0 is rejected if the value of the X is greater than X.alpha
#Since the computed value of the X., 74.61, is greater than the
# critical value 30.14, there is sufficient evidence to reject H0
# The upper-tail chi-square value
XU=qchisq(.975, df=19)
# The lower-tail chi-square value
XL=qchisq(1-.975, df=19)
# The 95% confidence interval for standard deviation
right_i=sqrt((n-1)*(s^2)/(XL))
left_i=sqrt((n-1)*(s^2)/(XU))
print(left_i)
print(right_i)


 