##Example 7.6.1 Pg.261
##Test for two proportions (one sided)

p1 = 24/44 ; p2 =11/29 ; q1=1-p1 ; q2=1-p2 ; alpha = 0.05 ; n1=44; n2=29
z = (p1-p2)/(sqrt((p1*q1/n1)+(p2*q2/n2)))
z = round(z,2)
z
z_critical = qnorm(1-alpha,0,1)
z_critical
pvalue = 1 - pnorm(z,0,1)
pvalue

#Since p value >alpha, hence not significant


