# givn confidence level =95%, we'll calculate z(1- 0.95)

n <- 50

mu <- 2.266

sig <- 1.935

a <- qnorm(0.05, lower.tail = F)

# To calculate lower limit
cat("Lower limit is ", mu - a*sig/sqrt(n) )
