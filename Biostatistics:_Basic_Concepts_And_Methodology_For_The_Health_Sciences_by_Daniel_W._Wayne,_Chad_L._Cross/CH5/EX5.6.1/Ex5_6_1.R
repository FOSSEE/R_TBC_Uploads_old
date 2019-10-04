##Example 5.6.1 Pg.155
##Sampling distribution of Two Proportions

P = 0.10 ; p1 = 0.28 ; p2 = 0.21 ; n=100 ; q1 = 1-p1 ; q2 = 1-p2

z = (P - (p1-p2))/sqrt((p1*q1/n)+(p2*q2/n))
z = round(z,2)
z

prob_z = 1 - pnorm(z,0,1)
prob_z  



