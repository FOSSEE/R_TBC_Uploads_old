##Example 7.3.1 Pg.237
##Test for two means when population variances are known (two sided)

mu1mu2 = 0 ; xbar1 =4.5 ;xbar2=3.4; var1 = 1; var2 =1.5 ; n1=12; n2=15
z = ((xbar1-xbar2)-(mu1mu2))/sqrt((var1/n1)+(var2/n2))
z
z_critical = qnorm(0.05/2,0,1)
z_critical
pvalue = 1-pnorm(z,0,1)
pvalue
##Z > z_critical or pvalue<0.05 , hence significant


