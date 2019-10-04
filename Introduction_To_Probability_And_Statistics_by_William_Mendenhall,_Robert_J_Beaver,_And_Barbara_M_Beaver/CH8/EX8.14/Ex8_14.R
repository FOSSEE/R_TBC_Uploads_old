range <- 8
sigma1 <- sigma2 <- sigma <- range / 4
alpha <- 1 - 0.95  # at 0.95 confidence coefficient 
z_0.05 <- qnorm(1 - alpha/2)
z_0.05
n <- (z_0.05 * sqrt(8)) ** 2
cat("there should be atleast",round(n,0),"workers in each group.")