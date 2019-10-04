#Normal Approximation to Binomial(Pg no. 130)

n = 50
p = 0.1

#P(X<=2)
x = pbinom(2,n,p)
cat("P(X<=2) =",round(x, digits = 3))

p1 = pnorm(2.5, 5, (sqrt(n*p*(1-p))))
cat("Based on the normal approximation P(X<=2) =",p1)

#P(9<=X)
p2 = pnorm(8.5, 5, 2.12, lower.tail = FALSE)
cat("P(9<=X) =",round(p2, digits = 2))