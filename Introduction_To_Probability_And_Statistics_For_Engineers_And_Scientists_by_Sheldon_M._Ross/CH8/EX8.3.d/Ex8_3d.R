alpha = 0.025;
betaa = 0.25;
u1 = 9.2;
uo = 8;
var =4;
zalpha = qnorm(1-alpha,0, 1);
zbeta = qnorm(1-betaa,0, 1);
n = ((zalpha + zbeta)/(u1-uo))^2 *var;
cat("Required number of samples is",ceiling(n))
statistic = sqrt(ceiling(n)/var)*(u1 - uo);
lim1 = -1*statistic + zalpha;
lim2 = -1*statistic - zalpha;
prob = pnorm(lim1 , 0,1 )- pnorm(lim2 , 0,1 );
cat("Thus, if the message is sent the reqd number of times is , then the probability that the null hypothesis will be rejected is",1-prob)