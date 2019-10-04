sample_mean <- 756;
sample_size <- 50;
standard_deviation <- 35;
z <- round((qnorm(0.995,lower.tail = T)),2);    #99% confidence interval-> 1 - 0.005 = 0.995
standard_error <- z *( standard_deviation / sqrt(sample_size))
left <- sample_mean - standard_error;
right <- sample_mean + standard_error;
cat("99% confidence interval is from ",left, "to" ,right, "grams  per day")
