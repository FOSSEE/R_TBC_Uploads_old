                                     # Page no. : 281

# Sampling Distribution of xbar

sigma <- 4000   
N <- 2500   
n <- 30     
x <- n / N

if(x > 0.05)   # Condition to include finite population factor or not (< 5%)
{
  standard_error <- sqrt((N-n)/(N-1)) * (sigma / sqrt(n))
} else{
  standard_error <- sigma / sqrt(n)
}

cat("Standard deviation of sample mean is",standard_error)

                                    # Page no. : 284

# To find probability that xbar is between 51300 and 52300

xbar1 <- 52300
xbar2 <- 51300
mu <- 51800

z1 <- (xbar1 - mu) / standard_error
z2 <- (xbar2 - mu) / standard_error

p1 <- pnorm(z1, lower.tail = T)
p2 <- pnorm(z2, lower.tail = T)

diff <- p1 - p2

cat("Probability that xbar is between 51300 and 52300 is", diff)