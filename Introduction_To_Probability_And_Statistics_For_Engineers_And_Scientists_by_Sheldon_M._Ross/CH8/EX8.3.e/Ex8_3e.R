n =5;
Xbar = 9.5;
u = 8;
var = 4;
statistic = sqrt(n/var)*(Xbar - u);
p = 1 - pnorm(statistic, 0, 1);
cat("The test would call for rejection at all significance levels greater than or equal to ",p)