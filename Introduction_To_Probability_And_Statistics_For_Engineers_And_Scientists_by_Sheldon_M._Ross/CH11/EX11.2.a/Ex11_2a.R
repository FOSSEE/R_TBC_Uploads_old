X<-c(90, 100, 87, 96, 101, 86, 119, 118, 121, 114, 113, 106)
pi= matrix(1,12,1);
pi= pi/12;
new = X^2;
npi= sum(X)*pi;
T = sum(new);
T = T/npi;
T = T - sum(X);
cat("When there are 12 regions")
cat("The test statistic is",T[1])
pvalue = 1- pchisq(T[1], 11);
cat("The pvalue is ",pvalue)

X<-c(277, 283, 358, 333)
pi= matrix(1,4,1);
pi= pi/4;
new = X^2;
npi= sum(X)*pi;
T = sum(new);
T = T/npi;
T = T - sum(X);
cat("When there are 4 regions")
cat("The test statistic is",T[1])
pvalue = 1- pchisq(T[1], 3);
cat("The pvalue is ",pvalue)