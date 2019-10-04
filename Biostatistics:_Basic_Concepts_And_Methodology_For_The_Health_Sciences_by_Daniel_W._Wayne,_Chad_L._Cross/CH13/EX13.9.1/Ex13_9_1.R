##Example 13.9.1 Pg.713
##Friedman test

ranks_A <-c(2,2,2,1,3,1,2,1,1)
ranks_B <-c(3,3,3,3,2,2,3,3,3)
ranks_C <-c(1,1,1,2,1,3,1,2,2)
n = 9 ; k=3
friedman = (12/(n*k*(k+1)))*(sum(ranks_A)^2+sum(ranks_B)^2+sum(ranks_C)^2) - 3*n*(k+1)
friedman
pval = pchisq(0.05/2,k-1) ;pval

#pval <0.05, hence the three models of low volt electrical stimulator are not equally preferred


