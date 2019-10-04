#P_Xei denotes P(X=i)

P_Xe36 = 36/120
P_Xe40 = 40/120
P_Xe44 = 44/120

w = c(P_Xe36, P_Xe40, P_Xe44)
X = c(36, 40, 44)

ans = weighted.mean(X, w)
print(ans)