total =50;
failure = 15;
alpha = 0.05;
t =525;
val1 = qchisq(alpha/2,2*failure)
val2 = qchisq(1-alpha/2,2*failure)

int1 = 2*t/val1;
int2 = 2*t/val2;
cat("The 95% confidence interval is",int2,"to",int1)

'The confidence interval is from 22.35 to 62.17 whereas solution in R is 22.35 to 62.53 
because of the difference in the value of chi-square(0.975, 30). 
The textbook says the value is 16.89 whereas R calculates its value as 16.79'