#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_G = 0.6
P_CgG = 1
P_CgGc = 0.2

ans = P_G*P_CgG / (P_G*P_CgG + (1 - P_G)*P_CgGc)

print(ans)