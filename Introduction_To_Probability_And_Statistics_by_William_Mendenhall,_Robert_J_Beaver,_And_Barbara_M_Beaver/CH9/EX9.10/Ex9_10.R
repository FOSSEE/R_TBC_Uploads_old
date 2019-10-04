# In textbook values are refered to example 9.9
non_owners <- 100;
owners <- 100;
average_non_owner <- 2.70;
average_owner <- 2.54;
variance_non_owner <- 0.36;
variance_owner <- 0.40;
d_nod <- 0;
point_estimate <-  average_non_owner - average_owner;
standard_error <- sqrt(((variance_non_owner)/non_owners) + (variance_owner)/owners);
confidence_interval_percent <- 0.95;
z_value <- qnorm(1-(1 - confidence_interval_percent)/2)
value = z_value * standard_error;
left = round((point_estimate - value),2);
right = round((point_estimate + value),2);
cat("The confidence interval is  approximated from",left,"to",right)
cat("there is not enough evidence so we cannot conclude")

