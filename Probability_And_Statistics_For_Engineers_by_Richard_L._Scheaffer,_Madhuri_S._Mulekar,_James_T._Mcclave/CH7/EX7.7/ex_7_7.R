
# using conditional probability distribution

a <- function(x,y){
   0.5
}

b <- function(y){
  0.5 * y
}

c <- function(x){
  a(x,1)/b(1)
}
  
cat(" The probability of interest is ", integrate(Vectorize(c),0,0.5)$value)

#  if the machine had contained 2 gallons at the start of the day
d <- function(x){
  a(x,2)/b(2)
}

cat(" The probability of interest is ", integrate(Vectorize(d),0,0.5)$value)
