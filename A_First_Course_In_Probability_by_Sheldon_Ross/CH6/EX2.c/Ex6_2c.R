#install.packages('pracma')
#install.packages('MASS')
require('pracma')
require(MASS)

integrand = function(x, y){
  1/60^2
}

xm = function(y){
  y - 10
}

ans = 2*integral2(integrand, xmin = 10, xmax =  60, ymin =  0, ymax = xm )$Q

print(fractions(ans))