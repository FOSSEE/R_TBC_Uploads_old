#install.packages("MASS")
require(MASS)
#P_X denotes P(X)
P_B = 1/4
P_A = 3/4

#P(BA) = P(B)
ans = P_B / P_A

print(fractions(ans))