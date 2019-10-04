maxf = -1e+09

n=10000
for (j in 1:n){
  Rnd=runif(2)
  x = -2 + 4 * Rnd[1]
  y = 1 + 2 * Rnd[2]
  fn = y - x - (2 * (x ^ 2)) - (2 * x * y) - (y ^ 2)
  if (fn > maxf){
    maxf = fn
    maxx = x
    maxy = y
  }
  if (mod(j,1000)==0){
    cat("Iteration:",j,"\n")
    cat("x:",x,"\n")
    cat("y:",y,"\n")
    cat("function value:",fn,"\n")
    cat("------------------------------------------\n")
  }
}