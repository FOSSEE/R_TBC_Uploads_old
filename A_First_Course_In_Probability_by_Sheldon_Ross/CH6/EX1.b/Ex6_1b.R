P = c(.15, .2, .35, .3)

P_BG <- function(i, j){
  if((i + j) >=4){
    return(0)
  }else{
    ans = P[(i + j) + 1] * ((factorial(i + j)/(factorial(i) * factorial(j)))/2^(i + j))
    return(ans)
  }
}

max_children = 3
for(i in 0:max_children){
  for(j in 0:max_children){
    cat("p(", i,",",j,") =", P_BG(i,j), "\n")
  }
}

