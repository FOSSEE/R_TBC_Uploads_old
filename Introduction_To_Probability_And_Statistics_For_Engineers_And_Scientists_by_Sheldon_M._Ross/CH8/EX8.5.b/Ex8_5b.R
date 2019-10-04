S1 = 0.14;
S2 = 0.28;
n= 10;
m= 12;
ratio  = S1/S2;
prob1 = pf(ratio, n-1, m-1);
prob2 = 1-prob1;
prob = min(prob1,prob2);
pvalue = 2*prob;
cat("The p value is",pvalue)
cat("So the hypothesis of equal variance cannot be rejected")