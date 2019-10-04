##Example 7.8.1 Pg.268
##Test for ratio of two population variances

s1 =30.62 ;s2 = 11.37; n1=6 ;n2=6; df1=n1-1; df2 = n2-1 ; alpha = 0.05
f = s1^2/s2^2
f
f_critical = qf(alpha,df1,df2,lower.tail = F)
f_critical
pvalue = pf(f,df1,df2,lower.tail = F)
pvalue

#Since pvalue<alpha, hence significant


