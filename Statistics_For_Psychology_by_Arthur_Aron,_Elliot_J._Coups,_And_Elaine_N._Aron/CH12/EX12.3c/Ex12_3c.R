                                     # Page no. : 505 - 507

# Finding a and b for the least squares linear prediction rule

Hours_slept <- c(5, 7, 8, 6, 6, 10)
Happy_mood <- c(2, 4, 7, 2, 3, 6)

DF <- data.frame(Hours_slept, Happy_mood)
View(DF)

# Direct method

regressor <- lm(Happy_mood ~ Hours_slept, data = DF)
res <- summary(regressor)

res

b <- res$coefficients[[2]]

a <- res$coefficients[[1]]

cat("Linear Prediction Rule is y_cap =",a,"+",b,"x")