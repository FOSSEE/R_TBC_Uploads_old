Aerror =28;
Berror = 18;
common =10;
N2 = Aerror - common;
N3 =Berror- common;
pval = pbinom(N2-1, N2 + N3, 0.5, 0.5);
cat("P-value is",pval)