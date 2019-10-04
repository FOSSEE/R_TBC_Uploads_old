##Example 6.3.1 Pg.173
##Confidence interval for mean - T test

xbar = 250.8 ; s = 130.9 ; n = 19 ; alpha = 0.05; p =qt(1-alpha/2,n-1) #gives alpha level p value

conf_l = xbar - p*sqrt(s^2/n)
conf_u = xbar + p*sqrt(s^2/n)

conf = c(conf_l,conf_u)
conf                       #95% confidence interval

