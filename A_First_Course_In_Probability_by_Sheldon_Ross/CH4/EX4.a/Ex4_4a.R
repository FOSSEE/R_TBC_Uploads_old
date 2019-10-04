#P_Xei denotes P(X=i)

P_Ye1 = 0.3 + 0.2
P_Ye0 = 0.5

w = c(P_Ye0, P_Ye1)
X = 0:1

ans = weighted.mean(X, w)

print(ans)