##Example 7.2.4 Pg.231
##Test for mean when population variances are known (one sided)

mu = 140 ; xbar = 146 ; s = 27 ; n=157
z = (xbar-mu)/(s/sqrt(n))
z
z_critical = qnorm(1-0.05,0,1)
z_critical
pvalue = 1-pnorm(z,0,1)
pvalue
##Z > z_critical or pvalue<0.05 , hence significant



