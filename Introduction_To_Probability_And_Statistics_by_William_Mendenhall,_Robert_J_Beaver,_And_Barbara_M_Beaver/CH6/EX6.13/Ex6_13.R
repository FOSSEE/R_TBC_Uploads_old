consumers <- 2500;
brand_share <- 10;
prob_correct <- brand_share/100;
prob_not_correct <- 1 - prob_correct;
mean = consumers * prob_correct;
standard_deviation <- sqrt(consumers * prob_correct * prob_not_correct)
x_value <- 211.5;
required_prob <- round((pnorm(x_value, mean, standard_deviation)),4)
cat("probability of observing 211 or fewer consumers who prefer her band of soft  drink is",required_prob)
