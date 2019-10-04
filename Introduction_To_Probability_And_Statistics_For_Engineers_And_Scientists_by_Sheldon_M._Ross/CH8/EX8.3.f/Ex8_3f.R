n =20;
Xbar = 1.54;
uo = 1.6;
sd = 0.8;
statistic = sqrt(n)*(Xbar - uo)/sd;
cat("Test statistic is",statistic)
p =  pnorm(statistic, 0, 1);
cat("P-value is",p)