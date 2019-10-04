miles_cover_by_type1 <- 26400;
miles_cover_by_type2 <- 25100;
type1_sample <- 100;
type2_sample <- 100;
variance1 <- 1440000;
variance2 <- 1960000;
point_estimate <- miles_cover_by_type1 - miles_cover_by_type2;
standard_error <- sqrt(((variance1)/type1_sample) + (variance2)/type2_sample);
confidence_interval_percent <- 0.99;
z_value <- round((qnorm(0.995)),2)
value <- z_value * standard_error;
left <- point_estimate - value;
right <- point_estimate + value;
cat("The difference in the average miles to wearout for the two  types of tires is estimated to lie between ",left,"and",right,"miles of wear")
