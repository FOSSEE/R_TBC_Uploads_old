##Example 7.7.1 Pg.264
##Test for single population variance

var =600 ; n=16 ; df=n-1; s2 = 670.81 ; alpha = 0.05
chisq = s2*(n-1)/var
chisq
chi_critical1 = qchisq(alpha/2,df)
chi_critical2 = qchisq(alpha/2,df,lower.tail = F)
chi_critical = c(chi_critical1,chi_critical2)
chi_critical
pvalue = pchisq(chisq,df)
pvalue

#Since pvalue>alpha, hence not significant


