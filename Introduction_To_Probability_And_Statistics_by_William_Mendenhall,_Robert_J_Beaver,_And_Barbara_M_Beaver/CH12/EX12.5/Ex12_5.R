x <- c(39,43,21,64,57,47,28,75,34,52)
y <- c(65,78,52,82,92,89,73,98,56,75)
x0 <- 50
df <- data.frame(x, y)
lmresult <- lm(y ~ x, data = df)
lmresult
df2 <- data.frame(x =  50)
df2
ycap <- predict(lmresult, df2, interval = "prediction")[1]
ycap
lower <- predict(lmresult, df2, interval = "prediction")[2]
upper <- predict(lmresult, df2, interval = "prediction")[3]
cat("the 95% confidence interval is from",lower,"to",upper)

 