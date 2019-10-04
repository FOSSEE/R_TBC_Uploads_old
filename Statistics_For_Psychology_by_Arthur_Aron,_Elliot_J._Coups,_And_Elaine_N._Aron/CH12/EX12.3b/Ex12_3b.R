                                  # Page no. : 504 - 505

# The least squared error principle

# Rule 1 ==>  y_cap <- 8 - (.18)*X
# Rule 2 ==>  y_cap <- 4 + (0)*X
# Rule 3 ==>  y_cap <- -2.5 + (1)*X
# Rule 4 ==>  y_cap <- -3 + (1)*X

Hours_slept <- c(5, 6, 6, 7, 8, 10)
Actual_mood <- c(2, 2, 3, 4, 7, 6)

# Rule 1

y_cap1 <- 8 - (.18) * Hours_slept   # Predicted mood 

error1 <- Actual_mood - y_cap1

error1_sq <- round(error1 ** 2, 2)   # Error squared

# Rule 2

y_cap2 <- 4 + (0) * Hours_slept   # Predicted mood 

error2 <- Actual_mood - y_cap2

error2_sq <- error2 ** 2   # Error squared

# Rule 3

y_cap3 <- -2.5 + (1) * Hours_slept   # Predicted mood 

error3 <- Actual_mood - y_cap3

error3_sq <- error3 ** 2   # Error squared

# Rule 4

y_cap4 <- -3 + (1) * Hours_slept   # Predicted mood 

error4 <- Actual_mood - y_cap4

error4_sq <- error4 ** 2   # Error squared

DF <- data.frame(Hours_slept, Actual_mood, y_cap1, error1, error1_sq, y_cap4, error4, error4_sq)
View(DF)

s1 <- sum(DF$error1_sq)

cat("Rule 1 sum of squared errors is", s1)

s2 <- sum(error2_sq)

cat("Rule 2 sum of squared errors is", s2)

s3 <- sum(error3_sq)

cat("Rule 3 sum of squared errors is", s3)

s4 <- sum(DF$error4_sq)

cat("Rule 4 sum of squared errors is", s4)