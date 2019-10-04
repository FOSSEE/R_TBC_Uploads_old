#Electric Current(Pg no. 110)

#P(X<5)
integrand <- function(x) {5}
q = integrate(Vectorize(integrand), lower = 4.9, upper = 5)
cat("P(X<5) =",q$value)

#P(4.95<X<5.1)
p = integrate(Vectorize(integrand), lower = 4.95, upper = 5.1)
cat("P(4.95<X<5.1) =",p$value)
