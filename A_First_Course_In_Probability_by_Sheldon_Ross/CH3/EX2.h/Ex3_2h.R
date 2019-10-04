#P_X denotes P(X) P_XgC denotes P(X|C)

P_E1 = 1
P_E2gE1 = 39/51
P_E3gE1E2 = 26/50
P_E4gE1E2E3 = 13/49

ans = P_E1 * P_E2gE1 * P_E3gE1E2 * P_E4gE1E2E3

print(ans)