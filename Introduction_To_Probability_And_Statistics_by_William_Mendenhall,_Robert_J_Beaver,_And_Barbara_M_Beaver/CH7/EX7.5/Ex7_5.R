no_of_bottles <- 10;
mean <- 12.1;
x_value <- 12;
standard_Deviation <- 0.2;
standard_error <- standard_Deviation/sqrt(no_of_bottles)
required_prob <- round((pnorm(x_value, mean, standard_error)),4)
cat("The required probability is",required_prob)
