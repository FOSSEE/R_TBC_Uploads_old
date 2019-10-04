sample_space <- 500;
mean <- 0.60;
standard_error <- sqrt((mean * (1-mean))/sample_space)
standard_error <- round(standard_error,3)
cat("standard error is",standard_error)
p <- 2 * standard_error
cat("required value is",p)