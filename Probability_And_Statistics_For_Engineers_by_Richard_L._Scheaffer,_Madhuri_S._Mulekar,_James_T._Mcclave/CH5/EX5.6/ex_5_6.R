px <- c(0.1,0.5,0.4)
x <- 0:2
E <-  weighted.mean(x,px)

# E(100X) = 100 E(X)
cat("Daily cost of using tool" , 100*E)


V <- sum(((x - E)^2)*px)
cat("variance is:", V)

# V(100X) =(100^2)V(X)
cat("Variance of daily cost is ", 100*100*V)
