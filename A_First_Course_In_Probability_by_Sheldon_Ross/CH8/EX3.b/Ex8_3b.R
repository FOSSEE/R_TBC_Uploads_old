mu = 100
var = mu

ans = 1 - pnorm(120 - 1/2, mu, sqrt(var))

print(ans)