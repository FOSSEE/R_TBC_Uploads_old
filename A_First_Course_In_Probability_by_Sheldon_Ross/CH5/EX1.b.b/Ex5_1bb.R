#note l denotes lambda
integrand = function(x){
  exp(-x/100)
}

l = 0.01

ans = l* integrate(integrand, lower = 0, upper = 100)$value

print(ans)