##Example 6.10.1 Pg.200
##F test

n1=16 ; n2=4 ; s1 =8.1 ; s2 = 5.9; df1 = n1-1 ; df2=n2-1; alpha = 0.05

Flower = qf(alpha/2, df1,df2)
Fupper = qf(1 - (alpha/2), df1,df2)

conf = c(s1^2/(s2^2*Fupper), s1^2/(s2^2*Flower))  #95% conf interval for 2 variances
conf

