#install.packages("MASS")
require(MASS)

integrand = function(x){
  100/x^2
}

P_Ei = integrate(integrand, lower = 100, upper = 150)$value

n = 5
x = 2

ans = dbinom(x, size = n, prob = P_Ei)
print(fractions(ans))
