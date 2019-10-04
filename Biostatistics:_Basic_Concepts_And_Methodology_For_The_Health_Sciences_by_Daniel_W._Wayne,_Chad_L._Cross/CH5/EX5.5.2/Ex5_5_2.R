##Example 5.5.2 Pg.152
##Sampling distribution of Proportion

P = 0.45 ; p = 0.51 ; q = 1-p ; n=200

z = (P - p)/sqrt(p*q/n)
z = round(z,2)
z

prob_z = pnorm(z,0,1)
prob_z


