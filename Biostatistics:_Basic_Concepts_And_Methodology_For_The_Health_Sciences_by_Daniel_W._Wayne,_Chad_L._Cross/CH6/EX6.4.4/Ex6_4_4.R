##Example 6.4.4 Pg.181
##Confidence interval for two means - T test

xbar1 = 4.7 ; xbar2= 8.8; n1=18; n2=10; var1 = 9.3^2 ; var2=11.5^2 ; alpha = 0.05
t1 = qt(1-alpha/2,n1-1); t2 = qt(1-alpha/2,n2-1)
t = ((t1*var1/n1)+(t2*var2/n2))/((var1/n1) + (var2/n2))


s_pooled = ((n1-1)*var1+(n2-1)*var2)/(n1+n2-2)

conf_l = (xbar1-xbar2) - t*sqrt((var1/n1)+(var2/n2))
conf_u = (xbar1-xbar2) + t*sqrt((var1/n1)+(var2/n2))

conf = c(conf_l,conf_u)
conf                       #95% confidence interval

