#install.packages("MASS")
require(MASS)
#P_X denotes P(X), P_XgC denotes P(X|C), P_Xc denotes P(X) complement

P_A = 0.3
P_A1 = 0.26
P_A1gA = 0.4 

ans = P_A * P_A1gA / P_A1
print(fractions(ans))

