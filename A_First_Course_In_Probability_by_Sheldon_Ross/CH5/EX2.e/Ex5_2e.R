#install.packages("MASS")
require("MASS")

integrand = function(x){
  2*x^3
}

E_X = 2/3

E_X2 = integrate(integrand, lower = 0, upper = 1)$value

ans = E_X2 - E_X^2

print(fractions(ans))