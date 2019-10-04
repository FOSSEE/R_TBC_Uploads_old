P_2i <- function(i, o = 20, d = 20){
  k = (factorial(o - 2*i) / (2^(o/2 - i) * factorial(o/2 - i)))^2
  numer = ((dim(combn(o, 2*i))[2])^2) * factorial(2*i) * k
  denom = (factorial(o + d) / (2^20 * factorial(o)))
  return(numer / denom)
}

for(i in 0:10){
  cat("P(", i,") =", P_2i(i), "\n")
}


