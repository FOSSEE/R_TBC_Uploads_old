n = 100
p = 0.75

ans1 = dbinom(70, size = n, prob = p)
cat("P{X = 70} = ", ans1, "\n")

ans2 = pbinom(70, size = n, prob = p)
cat("P{X <= 70} = ", ans2, "\n")