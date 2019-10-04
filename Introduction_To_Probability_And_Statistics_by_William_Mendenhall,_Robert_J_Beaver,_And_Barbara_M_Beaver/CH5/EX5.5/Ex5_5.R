total <- 5;
prob <- 0.6;
x <- 3;
y <- 2
case_one <- pbinom(x,total,prob)-pbinom(y,total,prob)
cat("probability of exactly three successes is",case_one)
case_two <- 1-pbinom(y,total,prob)
cat("probability of three or ore successes is",case_two)
#the answer may slightly vary due to rounding off values
