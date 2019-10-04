#install.packages("MASS")
require(MASS)
#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_A1gA = 0.4
P_A = 0.3
P_A1 = 0.26

P_AgA1 = P_A1gA * P_A / P_A1

P_A2gAA1 = 0.4
P_A2gAcA1 = 0.2

P_A2gA1 = P_A2gAA1 * P_AgA1 + P_A2gAcA1 * (1 - P_AgA1)

print(P_A2gA1)