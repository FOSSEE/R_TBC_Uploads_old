##Example 7.3.4 Pg.242
##Test for two means when population variances are known (two sided)

mu1mu2 = 0 ; xbar1 =59.01 ;xbar2=46.61; var1 =44.89^2; var2 =34.85^2 ; n1=53; n2=54
z = ((xbar1-xbar2)-(mu1mu2))/sqrt((var1/n1)+(var2/n2))
z
z_critical = qnorm(1-0.01,0,1)
z_critical
pvalue = 1-pnorm(z,0,1)
pvalue
##Z < z_critical or pvalue>0.05 , hence not significant



