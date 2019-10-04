                                  # Page no. : 251 - 252

# Normal Approximation of Binomial Probabilities

n <- 100
p <- 0.1
q <- 1 - p

mu <- n * p
sigma <- sqrt(mu * q)

# P(x = 12)  ==>  P(11.5 <= x <= 12.5)

x1 <- 12.5
x2 <- 11.5
z_value1 <- (x1 - mu) / sigma
z_value2 <- (x2 - mu) / sigma

area1 <- pnorm(z_value1)
area2 <- pnorm(z_value2)

diff <- area1 - area2

cat("The normal approximation to the probability of 12 successes in 100 trials is ",diff)

# Probability for 13

x <- 13.5 
z <- (x - mu) / sigma
ans <- pnorm(z)

cat("Answer is", ans)