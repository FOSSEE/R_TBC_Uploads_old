#Mean and variance(Pg no. 95)

size = 4
p = 100/300

u = size*p #expectation

v = size*(1/3)*(2/3)*((300-4)/299) #variance

cat("E(X) =",u)
cat("Var(X) =",v)

#The answer may slightly vary due to rounding off values