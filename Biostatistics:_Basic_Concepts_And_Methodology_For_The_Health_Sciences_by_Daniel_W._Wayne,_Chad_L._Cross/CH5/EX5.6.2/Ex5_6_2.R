##Example 5.6.2 Pg.155
##Sampling distribution of Two Proportions

P = 0.05 ; p1 = 0.34 ; p2 = 0.26 ; n1=250 ;n2=200; q1 = 1-p1 ; q2 = 1-p2

z = (P - (p1-p2))/sqrt((p1*q1/n1)+(p2*q2/n2))
z = round(z,2)
z

prob_z = pnorm(z,0,1)
prob_z  


