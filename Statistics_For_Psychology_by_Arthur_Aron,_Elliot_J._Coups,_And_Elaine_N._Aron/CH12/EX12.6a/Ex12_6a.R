                                      # Page no. : 520 - 522

# Proportionate reduction in error

Hours_slept <- c(5, 6, 6, 7, 8, 10)
Actual_mood <- c(2, 2, 3, 4, 7, 6)

DF <- data.frame(Hours_slept, Actual_mood)
View(DF)

# Direct method

regressor <- lm(Actual_mood ~ Hours_slept, data = DF)
res <- summary(regressor)

res

p_r <- round(res$r.squared, 2) # Proportionate reduction in error

cat("Proportionate reduction in error is", p_r)