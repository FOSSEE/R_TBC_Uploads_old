salary <- c(60710,NA,63160,63210,64140,65760,65590,59510,60440,61340,61760,62750,63200,NA)
x1 <- c(1,2,3,3,4,5,5,1,2,3,3,4,5,5)
x2 <- c(1,1,1,1,1,1,1,0,0,0,0,0,0,0)
df <- data.frame(salary, x1, x2)
df
model <- aov(salary ~ x1 * x2, data = df)
model
summary(model)
p_value <- summary(model)[[1]][["Pr(>F)"]][[3]]
p_value
cat("the p-value =",p_value,"is twice of what it would be for one- tailed test so null hypothesis is rejected ")
cat("So there is sufficient evidence to indicate that the annual rate of increase in men's faculty salaries exceeds the rate for women")