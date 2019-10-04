#(Pg no. 164)
y = c(1,2,3,4)
prob = c(0.05,0.1,0.1,0.75)
u = weighted.mean(y,prob)
cat("E(Y|1) =",u)

v = weighted.mean((y-u)^2, prob)
cat("V(Y|1) =",round(v, digits = 3))