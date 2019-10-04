
# E(Y) = E(E(Y|p))
# using binomial distribution
# E(Y|p)= E(n*p) = n*E(p)
# given , n=10

a <- function(p)
{
  10 * (4*p)
}

cat(" the expected value of Y for any given day", integrate(a,0,0.25)$value)