total <- 10;
prob <- 0.5;
x <- 7;
eight_or_more <- 1 - pbinom(x,10,0.5)
cat("probability of exactly three success is",eight_or_more)
