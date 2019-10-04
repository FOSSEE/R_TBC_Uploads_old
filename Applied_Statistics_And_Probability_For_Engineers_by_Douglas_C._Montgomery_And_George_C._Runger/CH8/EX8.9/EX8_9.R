#Crankshaft Bearings(Pg no. 293)

p = 0.12
e  = 0.05
z = qnorm(0.025,lower.tail = FALSE)

n = (z/e)^2 * p * (1-p)
n = ceiling(n)

cat("sample size is",n)

n = (z/e)^2 * 0.25
n = ceiling(n)
n