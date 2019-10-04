x_bar <- 75
variance <- 100
standard_deviation <- sqrt(variance)
lower1 <- x_bar - 2 * standard_deviation
upper1 <- x_bar + 2 * standard_deviation
lower2 <- x_bar - 3 * standard_deviation
upper2 <- x_bar + 3 * standard_deviation
cat("atleast 3/4 of the 25 measurements lie in the interval",lower1,"to",upper1,".")
cat("atleast 8/9 of the 25 measurements lie in the interval",lower2,"to",upper2,".")