lambda = 1/10

ans1 = 1 - pexp(10, lambda)
cat("Ans to a)", ans1, "\n")

ans2 = pexp(20, lambda) - pexp(10, lambda)
cat("Ans to b)", ans2, "\n")
