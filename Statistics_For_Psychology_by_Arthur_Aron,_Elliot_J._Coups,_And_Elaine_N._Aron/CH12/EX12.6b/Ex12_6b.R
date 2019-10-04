                                 # Page no. : 523 - 524

# How are you doing?

# 4th Question

score <- c(6, 4, 2, 8)
predicted_score <- c(5.7, 4.3, 2.9, 7.1)

m <- mean(score)   # mean

error <- score - m
error_sq <- error ** 2   # Error square

error2 <- score - predicted_score
error2_sq <- error2 ** 2   # Error square

DF <- data.frame(score, error, error_sq, predicted_score, error2, error2_sq)
View(DF)

ss_total <- sum(DF$error_sq)

ss_error <- sum(DF$error2_sq)

p_r <- round((ss_total - ss_error) / ss_total, 2) # Proportionate reduction in error

cat("Proportionate reduction in error is", p_r)

r <- round(sqrt(p_r), 2)   # Correlation coefficient

cat("Correlation coefficient is", r)