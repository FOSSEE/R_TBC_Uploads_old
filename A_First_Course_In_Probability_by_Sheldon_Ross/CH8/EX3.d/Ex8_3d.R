E_X = 1/2
Var_X = 1/12

n = 10

E_X = 1/2*10
Var_X = 1/12*10

ans = 1 - pnorm(6, E_X, sqrt(Var_X))

print(ans)