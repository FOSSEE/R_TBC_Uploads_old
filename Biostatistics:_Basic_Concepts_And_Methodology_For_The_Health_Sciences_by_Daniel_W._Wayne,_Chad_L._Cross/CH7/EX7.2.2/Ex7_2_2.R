##Example 7.2.2 Pg.226
##Test for mean when population variances are known (one sided)

mu = 30 ; xbar = 27 ; var = 20 ; n=10
z = (xbar-mu)/sqrt(var/n)
z
z_critical = qnorm(0.05,0,1)
z_critical
pvalue = pnorm(z,0,1)
pvalue
##Z > z_critical or pvalue<0.05 , hence significant



