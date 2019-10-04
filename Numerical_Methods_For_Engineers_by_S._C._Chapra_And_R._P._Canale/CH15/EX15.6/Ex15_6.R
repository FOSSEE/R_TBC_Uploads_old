library(neldermead)

fx <- function(x) {
  -(2*x[1]*x[2]+2*x[1]-x[1]^2-2*x[2]^2)
}

x=fminsearch(fun = fx,x0 = c(-1,1))
x = x$optbase$xopt
cat("After maximization:","\n","x=",x[1],",",x[2],"\n","f(x)=",fx(x),"\n")