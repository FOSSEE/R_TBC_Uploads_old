point_one <- -0.5;
point_two <- 1.0;
prob_one <- pnorm(point_one);
prob_two <- pnorm(point_two);
prob <- round((prob_two - prob_one),4);
cat("The required probability is",prob)
