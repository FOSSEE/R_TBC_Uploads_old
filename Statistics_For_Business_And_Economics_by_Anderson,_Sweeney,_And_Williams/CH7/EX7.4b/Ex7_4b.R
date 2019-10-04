                                    # Page no. : 291

# Practical value of the Sampling Distribution of pbar

population_proportion <- 0.60
standard_error <- 0.0894
sample_proportion <- 0.65

z_value <- (sample_proportion - population_proportion) / standard_error

prob1 <- pnorm(sample_proportion, population_proportion, standard_error, lower.tail =T)

sample_proportion2 <- 0.55

z_value <- (sample_proportion2 - population_proportion) / standard_error

prob2 <- pnorm(sample_proportion2, population_proportion, standard_error, lower.tail =T)

final_prob <- prob1 - prob2

cat("The final probability is",final_prob)

