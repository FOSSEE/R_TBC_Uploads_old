##Exaxmple 6.2.3 Pg.168
##Confidence iterval for population mean mu

xbar = 17.2 ; variance = 8^2; n = 35 ; alpha = 0.1 ; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = xbar - p*sqrt(variance/n)
conf_u = xbar + p*sqrt(variance/n)

conf = c(conf_l,conf_u)
conf

