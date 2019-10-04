##Example 5.4.1 Pg.145
##Sampling distribution of two means 

xbar1 = 92 ;xbar2 = 105; mu1=0 ; mu2 = 0 ; sd1 = 20 ; sd2 = 20 ; n1=15 ; n2=15

z = ((xbar1-xbar2)-(mu1-mu2))/(sqrt((sd1^2/n1)+(sd2^2/n2)))
z

prob_z = pnorm(z,0,1)
prob_z               


