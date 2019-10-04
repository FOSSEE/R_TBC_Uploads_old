mean <- 14
s <- 2
n <- 100
se <- s / sqrt(n)
x_bar <- 15
z <- (x_bar - mean) / se
z
p_value <- 2 * pnorm(-abs(z)) 
cat("p-value is approximately zero")