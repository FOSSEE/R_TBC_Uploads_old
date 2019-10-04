##Example 5.3.3 Pg.143
##Sampling distribution of mean P(115<xbar<125) = P(z1<z<z2)

xbar1 = 115 ; xbar2 = 125;  mu = 120 ; sd = 15 ; n=50

z1 = (xbar1-mu)/(sd/sqrt(n))
z2 = (xbar2-mu)/(sd/sqrt(n))

z = pnorm(z2,0,1)-pnorm(z1,0,1)
z


