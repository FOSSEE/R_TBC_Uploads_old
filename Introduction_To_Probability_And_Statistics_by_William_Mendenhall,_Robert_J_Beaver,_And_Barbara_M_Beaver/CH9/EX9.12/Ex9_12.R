admitted_men <- 52;
admitted_women <- 23;
sample_men <- 1000;
sample_women <- 1000;
p1_value <- admitted_men/sample_men;
p2_value <- admitted_women/sample_women;
pooled_estimate <- (admitted_men + admitted_women)/(sample_men + sample_women);
standard_error <- sqrt(pooled_estimate * (1 - pooled_estimate) * ((1/1000) + (1/1000)))
test_statistics <- (p1_value - p2_value)/standard_error
test_statistics
alpha <- 0.05;
k <- abs(qnorm(alpha))
lower_bound <- (p1_value  - p2_value) - k * sqrt((p1_value * (1 - p1_value)/sample_men) + (p2_value * (1 - p2_value)/sample_women))
cat("Lowest likely value for the difference is",lower_bound)
cat("the data present sufficient evidence to indicate that the percentage of men entering the hospital because of heart disease is higher than women")
