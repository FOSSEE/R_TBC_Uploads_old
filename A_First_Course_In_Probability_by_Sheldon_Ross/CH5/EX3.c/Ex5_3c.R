#install.packages("MASS")
require("MASS")

#returns the probability of U(0,30)
uni = function(lower, upper){
  alpha = 0
  beta = 30
  
  P_X = punif(upper, min = alpha, max = beta) - punif(lower, min = alpha, max = beta)
  return(P_X)
}

ans1 = uni(10 , 15) + uni(25, 30)
cat("Ans for a)")
print(fractions(ans1))

ans2 = uni(0, 5) + uni(15, 20)
cat("Ans for b)")
print(fractions(ans2))