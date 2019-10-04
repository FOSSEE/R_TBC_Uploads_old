x <- c(39,43,21,64,57,47,28,75,34,52)
y <- c(65,78,52,82,92,89,73,98,56,75)
df <- data.frame(x, y)
cat("interval is from",left,"to",right)
m <- lm(y ~ x, df)
m
confint(m,level = 0.95)
print(paste0("The 95% confidence interval is ",sprintf("[ %4.3f, %4.3f ]", confint(m,level = 0.95)[2],confint(m,level = 0.95)[4])));
#the answers may slightly vary due to rounding off values.  