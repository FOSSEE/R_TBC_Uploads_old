                                     # Page no. : 255

# Exponential Probability Distribution

mu <- 15
x1 <- 6
x2 <- 18

# P(x <= 6)

EPD <- pexp(x1,1/mu)   

# P(x <= 18)

EPD2 <- pexp(x2, 1/mu)

diff <- EPD2 - EPD

cat("The probability that loading a truck will take between 6 and 18 minutes is ",diff)

SD <- mu
sigma <- SD ** 2

cat("Variance is", sigma)