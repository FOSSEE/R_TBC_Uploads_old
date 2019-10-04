a <- function(x){
  0.5*exp(-x*0.5)
}


cat("the probability that battery will last longer than 400 hours",integrate(a,4,'infinite')$value)
cat("probability that the lifetime exceeds 9 is",integrate(a,9,'infinity')$value)
