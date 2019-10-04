#install.packages("MASS")
require(MASS)

#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_RgRB = 1/2
P_RB = 1/3

P_RgRR = 1
P_RR = 1/3

P_RgBB = 0
P_BB = 1/3

ans = P_RgRB*P_RB / (P_RgBB*P_BB + P_RgRB*P_RB + P_RgRR*P_RR)

print(fractions(ans))
