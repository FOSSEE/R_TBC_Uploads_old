mu = 3
sigma = sqrt(9)

ans1 = pnorm(5, mu, sigma) - pnorm(2, mu, sigma) 

cat("Ans to a) ", ans1, "\n")

ans2 = 1 - pnorm(0, mu, sigma)
cat("Ans to b) ", ans2, "\n")


ans3 = 1 - pnorm(9, mu, sigma) + pnorm(-3, mu, sigma)
cat("Ans to c) ", ans3, "\n")