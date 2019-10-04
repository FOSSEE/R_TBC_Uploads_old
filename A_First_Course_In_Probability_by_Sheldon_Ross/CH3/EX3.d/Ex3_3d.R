#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_D = 0.005
P_EgD = 0.95
P_EgDc = 0.01

ans = P_EgD * P_D / (P_EgD*P_D + P_EgDc*(1 - P_D))

print(ans)