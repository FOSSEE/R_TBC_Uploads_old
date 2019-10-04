                                    # Page no. : 507 - 508

# How are you doing?

# 4th Question

x <- c(4, 6, 7, 3)
y <- c(6, 8, 3, 7)

DF <- data.frame(x, y)
View(DF)

# (a) part

# Direct method

regressor <- lm(y ~ x, data = DF)
res <- summary(regressor)

res

b <- res$coefficients[[2]]

a <- res$coefficients[[1]]

cat("Linear Prediction Rule is y_cap =",a,"+",b,"x")

# (b) part

y_cap1 <- a + b * x   # Predicted score 

error1 <- y - y_cap1

error1_sq <- round(error1 ** 2, 2)   # Error squared

s1 <- sum(error1_sq)

cat("Sum of squared errors is", s1)

# (c) part

y_cap2 <- 9 - (0.7) * x   # Predicted score 

error2 <- y - y_cap2

error2_sq <- round(error2 ** 2, 2)   # Error squared

s2 <- sum(error2_sq)

cat("Sum of squared errors is", s2)