variance1 <- 7.14;
variance2 <- 3.21;
n1 <- 10;
n2 <- 8;
df1 <- n1 - 1
df2 <- n2 - 1
alpha <- 0.05
f97 <- round(qf( 0.95, df1=9, df2=7),2)
f79 <- round(qf(.95, df1=7, df2=9),2)
lower_value <- round((variance1 / variance2) * (1 / f97),2)
upper_value <- round((variance1 / variance2) * (f79),2)
cat("the interval is between ",lower_value,"and",upper_value)
