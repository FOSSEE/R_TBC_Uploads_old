#install.packages("MASS")
require("MASS")

myfun <- function(x,y) (2*exp(-x)*exp(-2*y))
llimx <- 0

llimy <- 0
ulimy <- Inf

f <- function(){
  return(integrate(function(y) { 
    sapply(y, function(y) {
      integrate(function(x) myfun(x,y), llimx, y)$value
    })
  }, llimy, ulimy))
}
ans = f()$value

print(fractions(ans))