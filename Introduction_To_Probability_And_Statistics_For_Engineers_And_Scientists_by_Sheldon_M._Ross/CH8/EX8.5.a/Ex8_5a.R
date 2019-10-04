n =20;
S2= 0.025;
chk = 0.15;
compare = (n-1)*S2/(chk^2);
pvalue = 1- pchisq(compare, n-1);
cat("The p-value is",pvalue)
cat("Thus , the null hypothesis is accepted")