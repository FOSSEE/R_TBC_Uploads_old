noise_var = 4;
num = 5;
Xbar = 10;
u = 8;
statistic = sqrt(num/noise_var)*(Xbar - u);
compare = qnorm(0.975,0, 1);
lim1 = statistic + compare;
lim2 = statistic - compare;
prob = pnorm(lim1 , 0,1 ) - pnorm(lim2 , 0,1 );
prob