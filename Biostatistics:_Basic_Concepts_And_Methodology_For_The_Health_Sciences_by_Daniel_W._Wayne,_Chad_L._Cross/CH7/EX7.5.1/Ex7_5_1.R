##Example 7.5.1 Pg.258
##Test for proportions (one sided)

P = 0.063 ; p =24/301 ; Q=1-P ; alpha = 0.05 ; n=301

z = (P - p)/(sqrt(P*Q/n))
z = round(z,2)
z
z_critical = qnorm(alpha,0,1)
z_critical
pvalue = pnorm(z,0,1)
pvalue

#Since p value >alpha, hence not significant


