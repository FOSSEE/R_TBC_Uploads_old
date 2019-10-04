##Example 6.4.1 Pg.177
##Confidence interval for two means - Z test

xbar1 = 4.5 ; xbar2=3.4; n1=12; n2=15; var1 = 1 ; var2=1.5 
alpha = 0.05; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = (xbar1-xbar2) - p*sqrt((var1/n1)+(var2/n2))
conf_u = (xbar1-xbar2) + p*sqrt((var1/n1)+(var2/n2))

conf = c(conf_l,conf_u)
conf                       #95% confidence interval

