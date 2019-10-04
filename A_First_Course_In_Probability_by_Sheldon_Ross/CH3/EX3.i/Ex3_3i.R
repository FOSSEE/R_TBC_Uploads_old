#install.packages("MASS")
require(MASS)
#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_A = 2/3
P_headsgA = 1/4
P_B = 1/3
P_headsgB = 3/4

ans = P_A*P_headsgA / (P_B*P_headsgB)

print(fractions(ans))