sample_mean <- 756;
sample_size <- 50;
standard_deviation <- 35;
standard_error <- qnorm(0.975) *( standard_deviation / sqrt(sample_size))
left <- round((sample_mean - standard_error),2);
right <- round((sample_mean + standard_error),2);
cat("95% confidence interval for sample mean is from ",left, "to" ,right,"grams")

