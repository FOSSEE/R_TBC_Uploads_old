library(neldermead)

fx <- function(x) {
  -(2*sin(x))+x^2/10 
}

x=fminsearch(fx,0)
x$output$algorithm
x = x$optbase$xopt
cat("After maximization:\n")
cat("x=",x)
cat("f(x)=",fx(x),"\n")