#install.packages("MASS")
require("MASS")

integrand = function(x){
  x*(1-x)
}

ans = factorial(3)/factorial(1)^2 * integrate(integrand, lower = 1/4, upper = 3/4)$value

print(fractions(ans))