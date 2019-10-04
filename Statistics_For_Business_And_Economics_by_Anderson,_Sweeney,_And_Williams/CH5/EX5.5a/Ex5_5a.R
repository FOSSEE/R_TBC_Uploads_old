                                     # Page no. : 203 - 204

# Expected Value and Variance

x <- c(0,1,2,3,4,5)  
prob_of_x <- c(0.18,0.39,0.24,0.14,0.04,0.01)
expected_value <- x * prob_of_x

DF <- data.frame(x, prob_of_x, expected_value)

expected_mean <- sum(DF$expected_value)

cat("Expected mean is",expected_mean)

deviation <- DF$x - expected_mean
sq_deviation <- deviation ** 2
expected_value2 <- DF$prob_of_x * sq_deviation

DF <- cbind(DF, deviation, sq_deviation, expected_value2)
View(DF)

expected_variance <- sum(DF$expected_value2)

cat("Expected variance is", expected_variance)

expected_SD <- sqrt(expected_variance)

cat("Expected SD is", expected_SD)
