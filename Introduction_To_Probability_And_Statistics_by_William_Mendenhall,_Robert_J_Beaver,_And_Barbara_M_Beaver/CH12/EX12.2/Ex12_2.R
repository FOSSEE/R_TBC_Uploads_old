x <- c(39,43,21,64,57,47,28,75,34,52)
y <- c(65,78,52,82,92,89,73,98,56,75)
x_square <- c(x**2)
y_square <- c(y**2)
xy <- c(x*y)
n <- 10;
sum_x <- sum(x)
sum_y <- sum(y)
sum_x_square <- sum(x_square)
sum_y_square <- sum(y_square)
sum_xy <- sum(xy)
s_xx <- sum_x_square - (sum_x * sum_x)/n
s_yy <- sum_y_square - (sum_y * sum_y)/n
s_xy <- sum_xy - (sum_x *sum_y)/n
y_bar <- sum(y)/n
x_bar <- sum(x)/n
b <- (s_xy/s_xx)
a <- y_bar - b*x_bar
a
b
total_ss <- s_yy
ssr <- (s_xy * s_xy)/s_xx
sse <- total_ss - ssr
mse <- sse / (n - 2)
mse
sse
test_statistics <- round(((b - 0)/sqrt(mse / s_xx)),2)
cat("test statistics is",test_statistics)
alpha <- 0.05            # 5% significance level 
range <- round(qt(1 - alpha/2, df = 8),3)
range
cat("rejection region is greater then",range,"or","less than",-range)
cat("there is significant linear relationship")
