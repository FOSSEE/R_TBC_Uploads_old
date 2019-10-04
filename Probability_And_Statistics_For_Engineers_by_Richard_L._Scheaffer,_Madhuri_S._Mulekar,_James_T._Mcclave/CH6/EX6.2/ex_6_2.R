a <- function(x){
  0.5*exp(-x*0.5)
}

#a
cat(" the probability that the lifetime of a particular battery of this type is less than 200 hours",
    integrate(a,0,2)$value)
# ans given in book is wrong ,P(X<2)= 0.6321

#b
cat(" the probability that a battery of this type lasts more than 30 hours given that it has already been in use for more than 200 hours. ",
    (integrate(a,3,'infinity')$value)/(integrate(a,2,'infinity')$value))
