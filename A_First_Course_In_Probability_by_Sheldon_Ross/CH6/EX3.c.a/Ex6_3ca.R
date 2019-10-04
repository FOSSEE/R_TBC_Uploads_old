#note E_Xab denotes E(Xa + Xb)
na = 26
pa = 0.4
E_Xa = na*pa
Var_Xa = na*pa*(1-pa)

nb = 18
pb = 0.7
E_Xb = nb*pb
Var_Xb = nb*pb*(1-pb)

E_Xab = E_Xa + E_Xb
Var_Xab = Var_Xa + Var_Xb

ans = 1 - pnorm(25 - 1/2, E_Xab, sqrt(Var_Xab))
print(ans)