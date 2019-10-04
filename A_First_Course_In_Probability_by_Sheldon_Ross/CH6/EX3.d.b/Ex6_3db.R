mu = 0.0165
sigma = 0.0730

mu = mu*2
sigma = sqrt(2 * sigma^2)

ans = 1 - pnorm(0, mu, sigma)

print(ans)