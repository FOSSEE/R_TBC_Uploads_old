A <- c(27,68,308)
B <- c(24,76,326)
C <- c(31,65,312)
D <- c(23,67,300)
t1 <- sum(A)
t2 <- sum(B)
t3 <- sum(C)
t4 <- sum(D)
b1 <- 105
b2 <- 276
b3 <- 1246
k <- 4;
n1 <- n2 <- n3 <- n4 <- 3
n <- 12;
b <- 3

sum_square_X <- sum(A) + sum(B) + sum(C) + sum(D)
sum_square_X
cm <- (sum_square_X * sum_square_X)/n
cm

l <- c(A,B,C,D)
l
sum_of_all <-sum( c(l * l))
sum_of_all
total_ss <- sum_of_all - cm
total_ss
sst <- (( t1 * t1 + t2 * t2 + t3 * t3 + t4 * t4)/ n1)- cm
sst
ssb <- ((b1 * b1 + b2 * b2 + b3 * b3) / k ) - cm
ssb
sse  <- total_ss - sst - ssb
sse
t2_bar <- t2 / n2
t3_bar <- t3 / n3
mse <- sse / ((b - 1) * (k - 1))
mse
alpha <- 0.05
df <- (b - 1)  * (k - 1)
lower_range <- round((t2_bar - t3_bar) - qt(1 - alpha/2,df) * sqrt(mse * (2 / b)),2)
upper_range <-round((t2_bar - t3_bar) + qt(1 - alpha/2,df) * sqrt(mse * (2 / b)),2)
cat("the difference between two average costs is estimated as betwen",lower_range,"and",upper_range,".")