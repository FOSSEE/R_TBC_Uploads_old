n = 100
p = 1/2

mu = n*p
sigma = sqrt(n*p*(1-p))

ans = 1 - pnorm(64.5, mu, sigma)

print(ans)