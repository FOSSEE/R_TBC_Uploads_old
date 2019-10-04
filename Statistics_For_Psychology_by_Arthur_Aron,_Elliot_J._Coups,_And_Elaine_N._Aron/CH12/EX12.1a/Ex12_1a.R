                                   # Page no. : 494 - 496

# The linear prediction rule an example

a <- 0.3   # Regression constant
b <- 0.004   # Regression coefficient
x <- 700   # SAT score

y_cap <- a + (b * x)   # Predicted GPA (Linear predictor)

cat("Predicted GPA (Linear predictor) is", y_cap)

# Another example

a <- -3   # Regression constant
b <- 1   # Regression coefficient
x <- 9   # Hours of sleep

y_cap <- a + (b * x)   # Predicted mood (Linear predictor)

cat("Predicted mood (Linear predictor) is", y_cap)