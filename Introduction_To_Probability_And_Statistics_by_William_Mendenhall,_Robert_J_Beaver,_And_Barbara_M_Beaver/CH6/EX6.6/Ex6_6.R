point_one <- 1;
point_two <- 2;
prob_one <- round(pnorm(point_one) - pnorm(-point_one),5);
prob_two <- round(pnorm(point_two) - pnorm(-point_two),4);
cat(" probability that a normally distributed random variable will fall within One standard deviation of its mean",prob_one)
cat(" probability that a normally distributed random variable will fall within Two standard deviations of its mean",prob_two)
#the answers may slightly vary due to rounding off values