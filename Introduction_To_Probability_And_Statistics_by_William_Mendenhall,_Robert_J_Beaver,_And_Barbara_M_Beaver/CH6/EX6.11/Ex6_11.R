total <- 25;
prob <- 0.5;
actual_prob <- round((pbinom(10,total,prob)-pbinom(7,total,prob)),4)
mean <- total * prob;
standard_deviation <- sqrt(total*prob*0.5)
x_lower <- 7.5;
x_upper <- 10.5;
approx_prob <- round(pnorm(x_upper, mean, standard_deviation) - pnorm(x_lower, mean, standard_deviation) ,4)
cat("actual probability is",actual_prob)
cat("approximate probability is",approx_prob)
cat("approximate and actual probability are quite close")
