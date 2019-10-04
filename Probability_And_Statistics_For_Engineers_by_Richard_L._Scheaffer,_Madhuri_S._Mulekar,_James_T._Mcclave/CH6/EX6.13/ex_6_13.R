# using normal distribution

#a
cat("P(Z <= 1) =", pnorm(1,lower.tail = TRUE))

#b
cat("P(Z < -1.5) =" , pnorm(-1.5,lower.tail = TRUE))

#c
cat("P(Z > 1) =", pnorm(1,lower.tail = FALSE))

#d
cat("P(-1.5 <= Z < =0.5) =", pnorm(0.5)-pnorm(-1.5))

#e
cat("The value of z such that P(Z<=z)= 0.99 is",qnorm(0.99,lower.tail = T))
