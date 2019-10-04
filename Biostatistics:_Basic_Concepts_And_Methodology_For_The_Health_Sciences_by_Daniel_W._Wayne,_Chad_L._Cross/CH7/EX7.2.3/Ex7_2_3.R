##Example 7.2.3 Pg.228
##Test for mean when population variances are unknown (two sided)

days<- c(14,9,18,26,12,0,10,4,8,21,28,24,24,2,3,14,9)
mu = 15 ; xbar = mean(days) ; var = var(days) ; n=17 ; df = n-1
t = (xbar-mu)/sqrt(var/n)
t
t_critical = qt(0.05/2,df)
t_critical
pvalue = 2*pt(t,df)
pvalue

##T > t_critical or pvalue<0.05 , hence significant

