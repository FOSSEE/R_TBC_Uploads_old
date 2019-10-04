                                        # Page no. : 389

# Determining the Sample Size

alpha <- 0.05   
beta <- 0.10   
z_alpha <- 1.645
z_beta <- 1.28
mu0 <- 120
mua <- 115
sigma <- 12

n <- ((z_alpha + z_beta)**2) * (sigma)**2 / (mu0 - mua)**2    # Sample Size
n <- ceiling(n)
cat("Sampling Size is",n)