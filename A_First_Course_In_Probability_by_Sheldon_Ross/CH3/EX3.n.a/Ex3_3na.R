#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_F1 = 0.2
P_F2 = 0.3
P_F3 = 0.5

P_AgF1 = 0.7
P_AgF2 = 0.4
P_AgF3 = 0.3

ans = P_AgF1*P_F1 + P_AgF2*P_F2 + P_AgF3*P_F3

print(ans)