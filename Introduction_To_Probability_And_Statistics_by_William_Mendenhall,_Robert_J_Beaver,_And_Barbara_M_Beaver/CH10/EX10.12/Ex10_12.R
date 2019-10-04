sigma_square <- 4
n <- 3
df <- n - 1
measurements <- c(4.1,5.2,10.2)
s_square <- var(measurements)
s_square
x_square <- ((n - 1) * s_square) / sigma_square
cat("p-value is greater than 0.10 so accept the null hypothesis")
alpha <- 0.10      #at 90% confidence interval alpha = 0.10
x_square_0.95 <- qchisq(alpha/2,df)
x_square_0.05 <- qchisq(1-alpha/2,df)
x_square_0.05
lower_value <- round((n - 1) * s_square/x_square_0.05,2)
upper_value <- round((n - 1) * s_square/x_square_0.95,2)
cat("the interval is from",lower_value,"to",upper_value)