noise_var = 4;
noise_mean= 0;
num = 5;
Xbar = 8.5;
u = 8;
statistic = sqrt(num/noise_var)*(Xbar - u);

prob = 2*pnorm(-1*statistic , 0,1 );
cat("P-value is",prob)

Xbar = 11.5;
statistic = sqrt(num/noise_var)*(Xbar - u);
prob = pnorm(-1*statistic , 0,1 );
cat("P-value is",prob)