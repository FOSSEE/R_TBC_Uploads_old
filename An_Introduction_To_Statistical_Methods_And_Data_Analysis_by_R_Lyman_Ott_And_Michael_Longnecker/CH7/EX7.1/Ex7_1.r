weights=c(501.4, 498.0, 498.6 ,499.2, 495.2 ,501.4 ,509.5 ,494.9 ,498.6, 497.6,
          505.5 ,505.1 ,499.8 ,502.4, 497.0 ,504.3 ,499.7 ,497.9 ,496.5, 498.9,
          504.9 ,503.2 ,503.0 ,502.6 ,496.8 ,498.2, 500.1 ,497.9 ,502.2, 503.2)
n=length(weights)
ybar=mean(weights)
s=sd(weights)
# The upper-tail chi-square value
XU=qchisq(.995, df=29)
# The lower-tail chi-square value
XL=qchisq(.005, df=29)
# The 99% confidence interval for standard deviation
right_i=sqrt((n-1)*(s^2)/(XL))
left_i=sqrt((n-1)*(s^2)/(XU))
print(left_i)
print(right_i)
# The 99% confidence interval for mean
margin <- qnorm(0.995)*s/sqrt(n)
left_interval_mean=ybar-margin
right_interval_mean=ybar+margin
print(left_interval_mean)
print(right_interval_mean)