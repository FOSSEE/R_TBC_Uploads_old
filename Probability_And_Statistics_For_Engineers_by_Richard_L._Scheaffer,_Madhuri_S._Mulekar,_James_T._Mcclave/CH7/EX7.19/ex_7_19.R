
a <- function(x1,x2){
  0.5
}

b <- function(x2){
  0.5 * x2
}

c <- function(x1){
 x1 * a(x1,1)/b(1)
}

cat("  the conditional expectation of amount of sales X1 given that X2 = 1 is ", integrate(Vectorize(c),0,1)$value)
