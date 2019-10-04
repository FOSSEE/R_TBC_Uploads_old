px <- c(0.1,0.5,0.4)
x <- 0:2
E <-  weighted.mean(x,px)
cat("expected daily demand for the tool is ",E)

V <- sum(((x - E)^2)*px)
cat("variance is:", V)


