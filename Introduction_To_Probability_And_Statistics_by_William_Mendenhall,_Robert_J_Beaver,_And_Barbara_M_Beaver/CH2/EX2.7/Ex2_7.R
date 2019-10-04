x_bar <- 12.8
standard_deviation <- 1.7
lower1 <- x_bar - 1 * standard_deviation
upper1 <- x_bar + 1 * standard_deviation
lower2 <- x_bar - 2 * standard_deviation
upper2 <- x_bar + 2 * standard_deviation
lower3 <- x_bar - 3 * standard_deviation
upper3 <- x_bar + 3 * standard_deviation
cat("approximately 68% ofmeasurements lie in the interval",lower1,"to",upper1,".")
cat("approximately 95% ofmeasurements lie in the interval",lower2,"to",upper2,".")
cat("approximately 99.7% ofmeasurements lie in the interval",lower3,"to",upper3,".")
