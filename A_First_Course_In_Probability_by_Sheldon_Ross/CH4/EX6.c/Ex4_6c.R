#install.packages("MASS")
require(MASS)

n = 3
p = 1/6
x = 0:3
P_X = dbinom(x, size = n, prob = p)

X = c(-1, 1, 2, 3)

ans = weighted.mean(X, P_X)

print(fractions(ans))
