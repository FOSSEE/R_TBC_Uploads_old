mu = 0.0165
sigma = 0.0730

p = 1 - pnorm(0, mu, sigma)
ans = p^2
print(ans)