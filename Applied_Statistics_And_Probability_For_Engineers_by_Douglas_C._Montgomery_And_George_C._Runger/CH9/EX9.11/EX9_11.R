#Automobile Engine Controller Type II Error(Pg no. 347)

p0 = 0.05
n = 200
p = 0.03
z_alpha = qnorm(p0,0,1,lower.tail = FALSE)

x = (p0 - p - (z*sqrt((p0*(1-p0))/n)))/sqrt((p*(1-p))/n)

beta = 1 - pnorm(x,0,1)

z_beta = qnorm(0.10,0,1,lower.tail = FALSE)
z_beta

n = (((z_alpha*sqrt(p0*(1-p0))) + (z_beta*sqrt(p*(1-p))))/(p-p0))^2
n = floor(n)
n