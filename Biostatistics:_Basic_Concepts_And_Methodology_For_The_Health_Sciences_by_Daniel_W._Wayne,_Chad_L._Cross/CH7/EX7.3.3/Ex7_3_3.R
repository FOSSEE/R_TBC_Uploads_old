##Example 7.3.3 Pg.240
##Test for means when population variances are unknown (two sided)

n1 = 15 ; n2 = 30 ; xbar1 = 19.16; xbar2 = 9.53 ; s1 = 5.29; s2 = 2.69
t = (xbar1-xbar2)/(sqrt((s1^2/n1)+(s2^2/n2)))
t
alpha = 0.05; df = n1+n2-2
t_critical = qt(0.05/2,df)
t_critical


#T > Tcritical, hence significant
#Answer might slightly differ due to approximation



