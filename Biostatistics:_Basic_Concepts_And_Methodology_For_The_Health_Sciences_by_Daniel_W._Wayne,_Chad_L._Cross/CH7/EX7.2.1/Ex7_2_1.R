##Example 7.2.1 Pg.222
##Test for mean when population variances are known (two sided)

mu = 30 ; xbar = 27 ; var = 20 ; n=10
z = (xbar-mu)/sqrt(var/n)
z
z_critical = qnorm(0.05/2,0,1)
z_critical
pvalue = 2*pnorm(z,0,1)
pvalue
##Z > z_critical or pvalue<0.05 , hence significant


