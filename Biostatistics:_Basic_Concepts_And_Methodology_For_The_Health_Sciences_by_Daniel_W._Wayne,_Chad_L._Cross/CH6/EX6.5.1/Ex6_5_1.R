##Example 6.5.1 Pg.185
##Confidence interval for population proportion

P = 0.18 ; Q=1-P ;  variance = 8^2; n =1220; alpha = 0.05 ; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = P - p*sqrt(P*Q/n)
conf_u = P + p*sqrt(P*Q/n)

conf = c(conf_l,conf_u)
conf

