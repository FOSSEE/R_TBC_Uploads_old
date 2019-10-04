#install.packages("MASS")
require("MASS")

P_XY = function(x, y){
  blue = 5
  red = 3
  white = 4
  lot_size = 3
  ans = choose(blue-x-y, lot_size-x-y) * choose(red, x) * choose(white, y) / choose(blue+white+red, lot_size)
}

lot_size = 3
for(i in 0:lot_size){
  for(j in 0:(lot_size - i)){
    cat("p(", i,",",j,") =")
    print(fractions(P_XY(i,j)))
  }
}