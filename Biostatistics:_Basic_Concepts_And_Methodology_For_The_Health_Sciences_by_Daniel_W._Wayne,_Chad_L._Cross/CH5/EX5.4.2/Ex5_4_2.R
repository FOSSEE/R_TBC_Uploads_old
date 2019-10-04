##Example 5.4.2 Pg.148
##Sampling distribution of two means 

xbar = 20 ; mu1=45 ; mu2 = 30 ; sd1 = 15 ; sd2 = 20 ; n1=35 ; n2=40

z = (xbar-(mu1-mu2))/(sqrt((sd1^2/n1)+(sd2^2/n2)))
z = round(z,2)
z

prob_z = 1 - pnorm(z,0,1)
prob_z               



