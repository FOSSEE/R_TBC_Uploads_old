n= 80;
v = 28;
p =0.5;

pvalue = pbinom(v, n, p);
cat("Pvalue is ",pvalue);   
cat("Thus, the null hypothesis that the median income is less than or equal to $90,000 is rejected")