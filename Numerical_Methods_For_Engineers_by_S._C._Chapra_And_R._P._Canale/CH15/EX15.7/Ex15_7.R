fx <- function(x) {
  -(2*sin(x)-x^2/10)
}

x=fminsearch(fx,0)
x = x$optbase$xopt
cat("After maximization:","\n","x=",x,"\n","f(x)=",fx(x),"\n")