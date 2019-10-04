hypothesized_value <- 0.2;
observed_value <- 15/100;
standard_error <- sqrt((hypothesized_value * (1-hypothesized_value))/100)
z_value <- (observed_value - hypothesized_value)/standard_error;
p_value <- pnorm(z_value)
cat("pvalue is",p_value)
cat("null hypothesis cannot be rejected so there is insufficient evidence to make conclusion")