##Exaxmple 6.2.4 Pg.169
##Confidence iterval for population mean mu

x = c(.360,1.827,.372,.610,.521,1.189,.537,.898,.319,.603,.614,.374,.411,.406,.533,.788,.449,.348,.413,.662,.273,.262,1.925,.767,1.177,2.464,.448,.550,.385,.307,.571,.971,.622,.674,1.499)
xbar = mean(x) ; variance = 0.36; n = length(x) ; alpha = 0.05; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = xbar - p*sqrt(variance/n)
conf_u = xbar + p*sqrt(variance/n)

conf = c(conf_l,conf_u)
conf                       #95% confidence interval
xbar                       #Mean
sqrt(variance)             #Std dev
sqrt(variance/n)           #Standard error of mean 

