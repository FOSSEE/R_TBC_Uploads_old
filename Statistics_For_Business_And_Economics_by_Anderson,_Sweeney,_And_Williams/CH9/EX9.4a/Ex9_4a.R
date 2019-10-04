                                       # Page no. : 382 - 383

# Calculating the Probability of Type Second Errors

mu0 <- 120  
alpha <- 0.05   
z_value <- 1.645   
n <- 36   
sigma <- 12   

xbar <- mu0 - z_value * (sigma / sqrt(n))

mu <- 112
z <- (xbar - mu) / (sigma / sqrt(n))

# Upper Tail Test

beta_value <- pnorm(z, lower.tail = F)

cat("The type 2nd error is",beta_value)

                                   # Page no. : 384

xbar <- 116.71   
mu <- 115   
sigma <- 12   
n <- 36   

z <- (xbar - mu) / (sigma / sqrt(n))

# Upper Tail Test

beta_value <- pnorm(z, lower.tail = F)

cat("The type 2nd error is",beta_value)