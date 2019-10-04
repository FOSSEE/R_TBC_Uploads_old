
mu = 270
sigma = sqrt(100)

#P(X > 290) = 1 - P(X <= 290)
ans =  1 - pnorm(290, mu, sigma) + pnorm(240, mu, sigma)

print(ans)