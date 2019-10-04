n = 450
p = 0.3

mu = n*p
sigma = sqrt(n*p*(1-p))

ans = 1 - pnorm(150.5, mu, sigma)

print(ans)