u <- function(x,y) {
  x^2+x*y-10
}

v <- function(x,y) {
  y+3*x*y^2-57
}

x=1
y=3.5
while (u(x,y)!=v(x,y)){
  x=x+1
  y=y-0.5
}
cat("x=",x)
cat("y=",y)