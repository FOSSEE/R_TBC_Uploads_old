bound_b <- 0.04
alpha <- 0.10    #at 0.90 confidence coefficient
z_0.05 <- qnorm(1 - alpha/2)
z_0.05
p <- q <- 0.5
n <- ((z_0.05 * 0.5) / bound_b) ** 2
cat("the producer must include atleast",round(n,0),"wholesalers in  survey")