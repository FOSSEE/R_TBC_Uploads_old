x <- c(39,43,21,64,57,47,28,75,34,52)
y <- c(65,78,52,82,92,89,73,98,56,75)
df <- data.frame(x, y)
lm(y ~ x, df)
cat("least square regression line is: ycap = 40.7842 + 0.7656x")

