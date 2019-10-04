X<-c(3, 6, 9, 7, 5)
p<-c(0.15, 0.25, 0.35, 0.20, 0.05)
T= 0;
n3=sum(X);
np = p*n3;
Xsqu = (X-np)^2;
cat(Xsqu);
XT = Xsqu/np;
T = sum(XT);

cat("The test statistic is",T)
pvalue = 1- pchisq(T[1], 4)
cat("The pvalue is ",pvalue)
cat("Thus, the hypothesis would not be rejected at 5% level of significance")