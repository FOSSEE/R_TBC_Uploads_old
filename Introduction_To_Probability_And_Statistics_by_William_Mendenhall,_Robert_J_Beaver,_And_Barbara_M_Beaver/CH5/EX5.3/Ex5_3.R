x <- 2;
n<- 10;
p <- 0.1;
prob <- round((dbinom(x,n,p)),4)
cat("the required probability is",prob)