                                        # Page no. : 285 - 286

# Relationship between Sample Size and Sampling Distribution of xbar

sigma <- 4000   
n <- 100  
population_mean <- 51800

standard_error <- sigma / sqrt(n)

xbar1 <- 52300
xbar2 <- 51300

z1 <- (xbar1 - population_mean) / standard_error
z2 <- (xbar2 - population_mean) / standard_error

p1 <- pnorm(z1, lower.tail = T)
p2 <- pnorm(z2, lower.tail = T)

diff <- p1 - p2

cat("Probability that xbar is between 51300 and 52300 with increased sample size is", diff)
