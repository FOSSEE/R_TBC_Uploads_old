p1_cap <- 0.76
p2_cap <- 0.65
q1_cap <- 0.24
q2_cap <- 0.35
n1 <- 50
n2 <- 100
p1_cap - p2_cap
standard_error <- round(sqrt(((p1_cap * q1_cap) / n1 ) + ((p2_cap * q2_cap) / n2 )),4)
standard_error
alpha <- 0.01       #at 99% confidence interval alpha = 0.01
z_0.005 <- qnorm( 1 - alpha/2)
lower_value <- (p1_cap - p2_cap) - z_0.005 * standard_error
upper_value <- (p1_cap - p2_cap) + z_0.005 * standard_error
cat("the interval is from",lower_value,"to",upper_value)
n <- 150
point_estimation <- 103/n
margin_of_error <- 1.96 * sqrt((point_estimation * (1 - point_estimation) / n))  
margin_of_error1 <- - 1.96 * sqrt((point_estimation * (1 - point_estimation) / n))
cat("margin of error is",margin_of_error,"and",margin_of_error1,".")
cat("interval is from",point_estimation - margin_of_error,"to",point_estimation + margin_of_error,".")
