#E_X denotes E[X], Var_X denotes Var(X)

#install.packages("MASS")
require(MASS)

X = 1:6
w = rep(1/6, 6)

E_X = weighted.mean(X, w)

X1 = X^2
E_X1 = weighted.mean(X1, w)

Var_X = E_X1 - E_X^2

print(fractions(Var_X))