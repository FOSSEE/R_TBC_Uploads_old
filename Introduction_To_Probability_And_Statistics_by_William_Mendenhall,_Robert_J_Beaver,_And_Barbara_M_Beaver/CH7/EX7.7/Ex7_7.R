# textbook refered to example 7.6 for values
sample_space <- 500;
proportion <- 0.55;
observed_value <- 0.60;
standard_error <- round(sqrt((proportion * (1-proportion))/sample_space),4)
cat("standard error is",standard_error)
req_prob <- round(1 - pnorm(observed_value, proportion, standard_error),4)
cat("probobality of observing a sample proportion as large as or larger than the observed value is",req_prob)
