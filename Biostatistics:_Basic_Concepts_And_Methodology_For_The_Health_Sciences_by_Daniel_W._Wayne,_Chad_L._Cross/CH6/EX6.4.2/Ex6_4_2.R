##Example 6.4.2 Pg.178
##Confidence interval for two means - Z test

xbar1 = 4.3 ; xbar2=13; n1=328; n2=64; s1 = 5.22 ; s2=8.97 
alpha = 0.01; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = (xbar1-xbar2) - p*sqrt((s1^2/n1)+(s2^2/n2))
conf_u = (xbar1-xbar2) + p*sqrt((s1^2/n1)+(s2^2/n2))

conf = c(conf_l,conf_u)
conf                       #95% confidence interval

