tot_men = 100
tot_people = 200

E_Xi = tot_men/(tot_people - 1)

E_X = E_Xi * tot_men

Var_X = E_X * (tot_men - 1)/(tot_people - 1) + 2 * choose(tot_men, 2)* ((tot_men*(tot_men - 1))/((tot_people - 1)*(tot_people - 3)) - (tot_men/(tot_people - 1))^2)

a = E_X - 30

ans = Var_X / (Var_X + a^2)

print(ans)