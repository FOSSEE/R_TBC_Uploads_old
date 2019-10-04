n = 6
p = 0.4
x = 0:6

P_X = dbinom(x, size = n, prob = p)

for(i in 0:6){
  cat("P{ X =", i, "} =", P_X[i+1], "\n")
}