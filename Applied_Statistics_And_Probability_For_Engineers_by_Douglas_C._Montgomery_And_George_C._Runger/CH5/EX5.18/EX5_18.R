#Layer Thickness(Pg no. 170)

mean1 = 10000
std_dev1 = 250
mean2 = 1000
std_dev2 = 20
mean3 = 80
std_dev3 = 4

#P(9200<X1<10800,950<X2<1050,75<X3<85)
zx1_min = pnorm(9200,mean1,std_dev1,lower.tail = FALSE)
zx1_max = pnorm(10800,mean1,std_dev1,lower.tail = FALSE)

zx2_min = pnorm(950,mean2,std_dev2,lower.tail = FALSE)
zx2_max = pnorm(1050,mean2,std_dev2, lower.tail = FALSE)

zx3_min = pnorm(75,mean3,std_dev3,lower.tail = FALSE)
zx3_max = pnorm(85,mean3,std_dev3, lower.tail = FALSE)

p = (zx1_min-zx1_max)*(zx2_min-zx2_max)*(zx3_min-zx3_max)
cat("the requested probability is P(9200<X1<10800,950<X2<1050,75<X3<85) =",round(p,digits = 4))