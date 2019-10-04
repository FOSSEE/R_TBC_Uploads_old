mean <- 10;
standard_deviation <- 2;
lower_X <- 11;
upper_x <- 13.6;
prob <- round((pnorm(upper_x, mean, standard_deviation) - pnorm(lower_X, mean, standard_deviation)),4);
cat("the required probability is",prob)