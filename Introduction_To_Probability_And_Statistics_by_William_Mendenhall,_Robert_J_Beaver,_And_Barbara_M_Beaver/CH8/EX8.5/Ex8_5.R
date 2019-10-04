sample <- 100;
p <- 0.73;
q <- 1 - p;
k <- sqrt((p * q)/sample);
margin_of_error <- round((1.96 * k),2)
cat("margin of error is",margin_of_error)