
# using normal distribution

z <- qnorm(0.05,lower.tail = F)
cat("The value of z such that P(Z>=z)= 0.05 is" ,z)
sd <- 1.2
cat("Therefore, the proper setting for the dial so that 17-ounce bottles will overflow only 5% of the time is when mean =",
    17 - sd*z)

