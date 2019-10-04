alpha <- 0.05  #at 95% confidence interval the alpha = 0.05
x_bar <- 10.3
n <- 40
s <- 0.31
se <- s / sqrt(n)
z_0.05 <- qnorm(1 - alpha)
z_0.05
ucb <- x_bar + z_0.05 * se
ucb
cat("the 95% upper confidence bound is",ucb)