df1 <- data.frame(green <- 20, red <- 39, blue <- 31)
chisq <- chisq.test(df1)
n <- 90
p_value <- chisq$p.value
p_value
cat("since the p-value is less than 0.05 so the null hypothesis is rejected")
cat("So there is sufficient evidence to indicate that the rat has a preference for one of the three doors")


