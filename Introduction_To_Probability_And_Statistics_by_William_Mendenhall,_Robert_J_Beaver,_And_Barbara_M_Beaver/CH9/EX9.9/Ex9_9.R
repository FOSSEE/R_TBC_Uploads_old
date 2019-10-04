non_owners <- 100;
owners <- 100;
average_non_owner <- 2.70;
average_owner <- 2.54;
variance_non_owner <- 0.36;
variance_owner <- 0.40;
d_nod <- 0;
point_estimate <-  average_non_owner - average_owner;
standard_error <- sqrt(((variance_non_owner)/non_owners) + (variance_owner)/owners);
z = round(((point_estimate - d_nod)/standard_error),2);
cat("value of z is",z)
alpha <- .05 
z.alpha <- round((qnorm(1 - alpha/2)),2) 
z.alpha                # critical value
cat("The value of z is",z)
cat("critical value is",z.alpha)
p_value <- round(((1-pnorm(z)) + pnorm(-z)),4)
cat("p value is",p_value)
cat("null hypothesis cannot  be rejected and there is insufficient evidence")
