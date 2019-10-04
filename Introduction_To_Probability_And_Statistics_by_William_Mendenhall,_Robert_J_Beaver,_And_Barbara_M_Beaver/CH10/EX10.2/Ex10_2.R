sample_size <- 10;
t <- round((qt(p = 0.01, df = sample_size - 1 ,lower.tail = T)),3)
cat("value of t is",t)