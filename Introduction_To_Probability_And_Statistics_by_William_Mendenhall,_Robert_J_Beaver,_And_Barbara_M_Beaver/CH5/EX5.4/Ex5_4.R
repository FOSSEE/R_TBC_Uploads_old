total_throws <- 4;
prob <- 0.8;
x <- 2;
y <- 0;
case_one <- dbinom(x,total_throws,prob)
cat("probability that he will make exactly two free throws is",case_one)
case_two <- 1-dbinom(y,total_throws,prob)
cat("probability that he will make atleast one free throw is",case_two)