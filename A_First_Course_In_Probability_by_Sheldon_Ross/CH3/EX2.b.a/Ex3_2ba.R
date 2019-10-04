#install.packages("MASS")
require(MASS)
#P_X denotes P(X)
P_B = 1/4
P_F = 1/2

#P(BF) = P(B)
ans = P_B / P_F

print(fractions(ans))
