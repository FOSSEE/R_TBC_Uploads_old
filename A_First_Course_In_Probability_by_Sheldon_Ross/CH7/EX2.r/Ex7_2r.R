no_of_chipmunks = 15
total_trees = 52

p = 7/52
Xi = rep(1, no_of_chipmunks)
E_Xi = Xi*p

E_X = sum(E_Xi)

print(E_X)