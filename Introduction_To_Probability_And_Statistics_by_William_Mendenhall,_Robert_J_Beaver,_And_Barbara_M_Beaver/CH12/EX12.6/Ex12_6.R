x <- c(39,43,21,64,57,47,28,75,34,52)
y <- c(65,78,52,82,92,89,73,98,56,75)
x0 <- 0
df <- data.frame(x, y)
lmresult <- lm(y ~ x, data = df)
lmresult
df2 <- data.frame(x = 0)
df2
ycap <- predict(lmresult, df2, interval = "confidence")[1]
ycap
lower <- predict(lmresult, df2, interval = "confidence")[2]
upper <- predict(lmresult, df2, interval = "confidence")[3]
cat("the 95% confidence interval is from",lower,"to",upper)
cat(", this interval does not contain the value alpha = 0 hence y intercept cannot be 0.")
cat("data does not support the hypothesis of 0 intercept")