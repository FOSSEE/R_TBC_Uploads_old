sample_size <- 30;
x_value <- 7;
mean <- 8;
sd <- 4;
prob_less_7 <- round(pnorm(x_value, mean, round((sd / sqrt(sample_size)),2)),6)
cat("The approximate probability duration for average duration is less than 7 years is",prob_less_7)
prob_exceed_7 <- round((1 - prob_less_7),5)
cat("The approximate probability for average duation exceeds 7 years is",prob_exceed_7)
x1_value <- 9;
prob_of_interest <- (pnorm(x1_value, mean, round((sd / sqrt(sample_size)),2))) - (pnorm(x_value, mean, round((sd / sqrt(sample_size)),2)))
cat("The approximate probability for average duration lies within 1 year of the population mean=8 is",prob_of_interest)
#"The answers may sligthly vary due to rounding off values"


