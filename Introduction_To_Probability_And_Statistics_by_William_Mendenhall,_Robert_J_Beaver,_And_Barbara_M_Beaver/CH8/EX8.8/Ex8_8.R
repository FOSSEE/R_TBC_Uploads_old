sample_size <- 985;
vote_for_republican <- 592;
point_estimate <- vote_for_republican/sample_size;
standard_error <- sqrt((point_estimate * (1 - point_estimate))/sample_size)
standard_error
point_estimate
coin_interval <- 90/100;
z <- qt((1+coin_interval)/2,df=sample_size-1)
value <- z * standard_error
left <- round((point_estimate - value),3);
right <- round((point_estimate + value),3);
cat("90% confidence interval is from ",left, "to" ,right)
