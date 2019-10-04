#install.packages("MASS")
require("MASS")

integrand = function(x){
  2*x^2 
}

ans = integrate(integrand, lower = 0, upper = 1)$value
print(fractions(ans))