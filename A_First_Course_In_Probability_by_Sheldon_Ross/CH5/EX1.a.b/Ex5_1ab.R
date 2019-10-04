#install.packages("MASS")
require("MASS")

integrand = function(x){
  C = 3/8
  C*(4*x - 2*x^2)
}


ans = integrate(integrand, lower = 1, upper = 2)$value

print(fractions(ans))