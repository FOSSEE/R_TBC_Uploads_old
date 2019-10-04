sample_size_men <- 50;
sample_size_women <- 50;
sample_mean_men <- 756;
sample_mean_women <- 762;
sample_standard_Deviation_men <- 35;
sample_standard_Deviation_women <- 30;
z_value <- 1.96
#we know from z table that for 95% confidence interval the z value is 1.96;
point_estimate <- sample_mean_men -sample_mean_women;
standard_error <- sqrt(((sample_standard_Deviation_men * sample_standard_Deviation_men)/sample_size_men + (sample_standard_Deviation_women * sample_standard_Deviation_women)/sample_size_women))
value <- z_value * standard_error;
left <- round((point_estimate - value),2);
right <- round((point_estimate + value),2);
cat("The 95% confidence interval is from",left,"to",right)
