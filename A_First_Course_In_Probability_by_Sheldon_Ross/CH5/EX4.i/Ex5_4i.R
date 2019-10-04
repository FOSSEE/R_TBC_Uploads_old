
P_Sn = function(n){
  p = 0.52
  mu = p*n
  sigma = sqrt(n * p * (1-p))
  ans = 1 - pnorm( 0.5 * n, mu, sigma)
  return(ans)
}

N = c(11, 101, 1001)

for(i in N){
  cat("For n =", i, "P(Sn > 0.5*n) =", P_Sn(i), "\n")
}

i = 1
while(P_Sn(i) < 0.95){
  i = i + 1
}
cat("For at least 95%, n =", i, "\n")