##Example 6.8.1 Pg.192
##Determine the sample size n

z = qnorm(1-0.05/2,0,1) ; p=0.35; q=1-p; d=0.05
n = z^2 * p*q / d^2
n = round(n,0)
n
