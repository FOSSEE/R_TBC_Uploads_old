mu = 20
sd = 4
n = 25
mu = mu*n
sd = sd*sqrt(n)

ans = pnorm(450, mu, sd)

print(ans)