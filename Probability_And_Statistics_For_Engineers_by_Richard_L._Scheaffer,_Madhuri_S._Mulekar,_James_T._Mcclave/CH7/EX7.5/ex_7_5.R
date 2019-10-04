
a <- function(x1){
  3 * x1
}

b <- function(x2){
  1.5 * (1-( x2*x2))
}

cat("the probability that X2 will be between 0.2 and 0.4 for a given week = ", integrate(b,0.2,0.4)$value)
