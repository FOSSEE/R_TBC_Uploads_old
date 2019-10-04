##Exaxmple 6.2.1 Pg.166
##Confidence iterval for population mean mu

xbar = 22 ; variance = 45; n = 10 ; alpha = 0.05 
p = qnorm(1-alpha/2,0,1) #gives alpha level p value
p = round(p,1)
p

conf_l = xbar - p*sqrt(variance/n)
conf_u = xbar + p*sqrt(variance/n)

conf = c(conf_l,conf_u)
conf


