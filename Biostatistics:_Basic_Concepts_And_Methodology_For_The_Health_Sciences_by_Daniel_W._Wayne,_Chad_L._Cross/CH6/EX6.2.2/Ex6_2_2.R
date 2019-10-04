##Exaxmple 6.2.2 Pg.168
##Confidence iterval for population mean mu

xbar = 84.3 ; variance = 144; n = 15 ; alpha = 0.01 ; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = xbar - p*sqrt(variance/n)
conf_u = xbar + p*sqrt(variance/n)

conf = c(conf_l,conf_u)
conf



