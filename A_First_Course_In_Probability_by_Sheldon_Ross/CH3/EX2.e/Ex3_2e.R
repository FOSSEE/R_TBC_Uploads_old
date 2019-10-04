#install.packages("MASS")
require(MASS)

#P_X denotes P(X) P_XgC denotes P(X|C)

P_C = 1/2
P_AgC = 2/3

ans = P_C * P_AgC
print(fractions(ans))