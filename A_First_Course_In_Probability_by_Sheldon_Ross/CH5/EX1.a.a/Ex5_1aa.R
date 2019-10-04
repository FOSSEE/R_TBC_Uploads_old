#install.packages("MASS")
require(MASS)

integrand = function(x){
  4*x - 2*x^2
}

C = 1 / integrate(integrand, lower = 0, upper = 2)$value

print(fractions(C))