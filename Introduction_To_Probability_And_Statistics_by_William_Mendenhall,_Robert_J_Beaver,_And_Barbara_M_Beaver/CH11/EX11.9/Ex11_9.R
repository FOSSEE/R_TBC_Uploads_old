b <- 3
k <- 4
low <- c(27,24,31,23)
middle <- c(68,76,65,67)
high <- c(308,326,312,300)
df <- data.frame(low, middle, high)
data <-c((as.matrix(df)))
data
f <- c("a","b","c","d")
company <- gl(k,1, b*k,factor(f))
usage <- gl(b, k, k * b)
model <- aov(data ~ usage + company)
model
summary(model)
p.value <- summary(model)[[1]][["Pr(>F)"]][[2]]
p.value
cat("since the p-value from anova test p.value=",p.value,"is too large to allow rejection of null hypothesis.")
cat("hence there is insufficient evidence to indicate a difference in the averge monthly costs for the four companies.")