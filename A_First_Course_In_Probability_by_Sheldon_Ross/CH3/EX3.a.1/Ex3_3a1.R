#P_X denotes P(X), P_XgC denotes P(X|C), P_Xc denotes P(X) complement

P_A1gA = 0.4
P_A = 0.3

P_A1gAc = 0.2
ans = P_A1gA * P_A + P_A1gAc * (1 - P_A)

print(ans)