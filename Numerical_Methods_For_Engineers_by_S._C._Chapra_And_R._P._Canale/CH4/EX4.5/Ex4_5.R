DD <- function(expr, name, order = 1) {
  if(order < 1) stop("'order' must be >= 1")
  if(order == 1) D(expr, name)
  else DD(D(expr, name), name, order - 1)
}

x=2.5
delta=0.01
deltafx=abs(eval(DD(expr = expression(x^3),name = "x",order = 1)))*delta
fx=f(x)
cat("true value is between",fx-deltafx,"and",fx+deltafx)