#One-Sided Confidence Bound(Pg no. 277)

n = 10
sd = 1
z = qnorm(0.05,lower.tail = FALSE)
mean = 64.46

min = mean - z*(sd/sqrt(n))

cat("the interval is",round(min,digits = 2),"<= u")