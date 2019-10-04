#install.packages("MASS")
require(MASS)

X = 1:6
w = rep(1/6, 6)

ans = weighted.mean(X, w)
print(fractions(ans))