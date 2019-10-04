#Refer to EX3_14(Number of voice lines)

#Proportion of voice lines(Pg no. 79)

u = 24 #expectation E(X)
v = 199.94 #variance Var(X)

u1 = u/48 #expectation E(Y)
v1 = v/(48^2) #variance Var(Y)

cat("Expectation E(Y) =",u1)
cat("Variance  Var(Y) =",v1)
#The answer may slightly vary due to rounding off values