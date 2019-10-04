total_men <- 5000;
prob <- 0.001;
claims <- 4;
mean <- total_men * prob
exact_prob <- round((dpois(claims,mean)),3)
cat("probability that the company will have to pay 4 claims during a given year is",exact_prob)