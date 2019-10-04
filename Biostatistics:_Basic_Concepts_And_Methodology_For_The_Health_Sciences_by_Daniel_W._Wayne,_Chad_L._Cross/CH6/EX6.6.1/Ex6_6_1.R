##Exaxmple 6.6.1 Pg.187
##Confidence iterval for two population proportions

P1 = 31/68; P2 = 53/255; Q1=1-P1 ; Q2 = 1-P2;  n1 = 68 ; n2 = 255
alpha = 0.01 ; p =qnorm(1-alpha/2,0,1) #gives alpha level p value

conf_l = (P1-P2) - p*sqrt((P1*Q1/n1)+(P2*Q2/n2))
conf_u = (P1-P2) + p*sqrt((P1*Q1/n1)+(P2*Q2/n2))

conf = c(conf_l,conf_u)
conf

