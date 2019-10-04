T = 500;
alpha = 0.05;
r = 10;
val1 = qchisq(1-alpha/2, 2*r)
val2 = qchisq(alpha/2, 2*r)
int1= 2*T/val1;
int2= 2*T/val2;
cat("The 95% confidence interval is",int1,"to",int2)

'The confidence interval is from 29.27 to 103.52 whereas solution in R is 29.265774 to 
104.26683 because of the difference in the value of chi-square(0.975, 30). 
The textbook says the value is 9.66 whereas scilab calculates its value as 9.5907774 '