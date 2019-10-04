no_breakfast<-c(8,7,9,13,10)
light_breakfast<-c(14,16,12,17,11)
full_breakfast<-c(10,12,16,15,12)

k <- 3;
n1 <- n2 <- n3 <- 5
n <- 15;

sum_square_X <- sum(no_breakfast) + sum(light_breakfast) + sum(full_breakfast)
cm <- (sum_square_X * sum_square_X)/n
cm
x <- sum(no_breakfast)
y <- sum(light_breakfast)
z <- sum(full_breakfast)
total_ss <- (8*8 + 7*7 + 9*9 + 13*13 + 10*10 + 14*14 + 16*16 + 12*12 + 17*17 + 11*11 + 10*10 + 12*12 + 16*16 + 15*15 + 12*12 ) - cm
total_ss
sst <- ((x*x + y*y + z*z)/5) - cm
sst
sse  <- total_ss -sst
sse
df <- n - k
df
mse <- sse / (n - k)
mse
mst <- sst / (k - 1)
mst
f <- mst / mse
f
s <- sqrt(mse)
s
alpha <- 0.05 
w <- (qtukey(1 - alpha, k, df)) * (s / sqrt(n1))
w
cat("the difference between no break fast and light breakfas exceeds w = ",w,"  so no breakfast and light breakfast are declared significantly different ")
