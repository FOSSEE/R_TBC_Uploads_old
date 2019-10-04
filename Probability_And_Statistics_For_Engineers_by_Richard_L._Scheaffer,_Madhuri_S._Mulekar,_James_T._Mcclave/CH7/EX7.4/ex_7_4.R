
a <- function(x1,x2){
  2 * (1-x1)
}
cat("f1(x1) = 2(1-x1)")
cat("Since , f2(x2) =", integrate(a,0,1)$value,", our conjecture is verified")
