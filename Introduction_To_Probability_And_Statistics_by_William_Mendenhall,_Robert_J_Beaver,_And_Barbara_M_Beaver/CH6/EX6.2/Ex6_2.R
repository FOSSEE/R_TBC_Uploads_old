average_waiting_time <- 5
waiting_time <- 10
required_probability <-  1 - pexp(waiting_time, rate = 1 / average_waiting_time)
cat("the required probability is",required_probability)