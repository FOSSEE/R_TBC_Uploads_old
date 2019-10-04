A<-c(61.1, 58.2, 62.3, 64, 59.7, 66.2, 57.8, 61.4, 62.2, 63.6)
B<-c(62.2, 56.6, 66.4, 56.2, 57.4, 58.4, 57.6, 65.4)
uA = mean(A);
uB = mean(B);
n= length(A);
m =length(B);
Sx = var(A);
Sy = var(B);
Sp = ((n-1)*Sx/(n+m-2)) + ((m-1)*Sy/(n+m-2));
den = sqrt(Sp*((1/n)+(1/m)));
TS = (uA-uB)/den;
cat("The test statistic is",TS);
pvalue = 2*(1- pt(TS,m+n-2));
cat("Null hypothesis is accepted at any significance level less than",pvalue)