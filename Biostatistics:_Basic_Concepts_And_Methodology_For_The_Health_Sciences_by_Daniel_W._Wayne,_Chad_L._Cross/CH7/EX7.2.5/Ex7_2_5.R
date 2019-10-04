##Example 7.2.5 Pg.232
##Test for mean when population variances are unknown (two sided)

circ<- c(33.38,34.34,33.46,32.15,33.95,34.13,33.99,33.85,34.45,34.10,34.23,34.19,33.97,32.73,34.05)
mu = 34.5 ; xbar = mean(circ) ; var = var(circ) ; n=length(circ) ; df = n-1
t = (xbar-mu)/sqrt(var/n)
t
t_critical = qt(0.05/2,df)
t_critical
pvalue = 2*pt(t,df)
pvalue

##T > t_critical or pvalue<0.05 , hence significant


