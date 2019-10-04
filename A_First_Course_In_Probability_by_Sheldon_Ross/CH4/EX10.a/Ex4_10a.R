#install.packages("MASS")
require("MASS")
#required to calculate limits
sentinal = exp(-12)
#note F_x denotes F(x) and P_X(i) denotes P(X < i)

F_x = function(x){
  if(x < 0){
    return(0)
  }
  
  if(x < 1){
    return(x/2)
  }
  
  if(x < 2){
    return(2/3)
  }
  if(x < 3){
    return(11/12)
  }
  else{
    return(1)
  }
}

P_X = function(F, b){
  return(F(b - sentinal))
}

ans1 = P_X(F_x, 3)

cat("Answer to part a: ")
print(fractions(ans1))

ans2 = F_x(1) - P_X(F_x, 1)

cat("Answer to part b: ")
print(fractions(ans2))

ans3 = 1 - F_x(1/2)

cat("Answer to part c: ")
print(fractions(ans3))

ans4 = F_x(4) - F_x(2)

cat("Answer to part d: ")
print(fractions(ans4))
