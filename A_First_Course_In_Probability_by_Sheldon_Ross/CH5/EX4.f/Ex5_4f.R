n = 40
p = 1/2
x = 20
mu = n*p
sigma = sqrt(n*p*(1-p))

ans1 = pnorm(x + 0.5, mean = mu, sd = sigma) - pnorm(x - 0.5, mean = mu, sd = sigma)
cat("Ans through normal approximation:", ans1, "\n")

ans2 = dbinom(x, size = n, prob = p)
cat("Ans:", ans2)
