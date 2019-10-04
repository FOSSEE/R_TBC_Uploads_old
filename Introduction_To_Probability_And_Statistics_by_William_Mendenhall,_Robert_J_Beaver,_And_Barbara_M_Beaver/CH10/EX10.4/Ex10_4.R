data <- c(310,311,412,368,447,376,303,410,365,350)
mean <- mean(data)
s <- sd(data)
mu0 <- 400
t.test(data,mu = mu0)
p.value <- t.test(data,mu = mu0)$p.value
p.value
cat(p.value < 0.05)
cat("Since p-value is less than 0.05  so null hypothesis is rejected and there is sufficient evidence to indiacte the coverage differs from 400")