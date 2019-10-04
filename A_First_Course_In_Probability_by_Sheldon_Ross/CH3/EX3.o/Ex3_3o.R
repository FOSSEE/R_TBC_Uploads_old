#P_EgX denotes P(E|X)
#P_Ec denotes P(E complement)

ex_criminals = 10000
tot_pop = 1000000
P_hair_match = 10^-5

alpha = function(c){
  c/(ex_criminals*c + tot_pop - ex_criminals)
}

P_MgG = (1 - P_hair_match)^(ex_criminals - 1)

P_all_aj = function(c){
  (1 - ex_criminals*alpha(c))/ (1 - alpha(c))
}

P_MgGc = function(c){
  P_hair_match * P_all_aj(c) * (1 - P_hair_match)^(ex_criminals - 1)
}

P_G = alpha

P_GgM = function(c){
  (P_MgG * P_G(c)) / (P_MgG*P_G(c) + P_MgGc(c)*(1 - P_G(c)))
}

#case 1, let c=100
c1 = 100
ans1 = P_GgM(c1)
cat("For c =", c1, "alpha =", alpha(c1), "and P(G|M) =", P_GgM(c1), "\n")

#case 2, let c=10
c2 = 10
ans2 = P_GgM(c2)
cat("For c =", c2, "alpha =", alpha(c2), "and P(G|M) =", P_GgM(c2), "\n")

#case3, let c=1
c3 = 1
ans3 = P_GgM(c3)
cat("For c =", c3, "alpha =", alpha(c3), "and P(G|M) =", P_GgM(c3), "\n")
