mean <- 25.5;
standard_deviation <- 4.5;
value_x <- 30;
prob <- 1 - pnorm(value_x, mean, standard_deviation);
percentage <- prob *100;
cat("the required percentage is",round(percentage,2))
