library(Deriv)

f <- function(x) {
  tan(x)
}

f_ = Deriv(f)

pi = 3.1415927
x1bar=(pi/2)+0.1*(pi/2)
x2bar=(pi/2)+0.01*(pi/2)
#computing condition number for x1bar
condnum1=x1bar*f_(x1bar)/f(x1bar)
cat("The condition number of function for x=",x1bar,"is:",condnum1)
if (abs(condnum1)>1){
  cat("Function is ill-conditioned for x=",x1bar)
}
#computing condition number for x2bar
condnum2=x2bar*f_(x2bar)/f(x2bar)
cat("The condition number of function for x=",x2bar,"is:",condnum2)
if (abs(condnum2)>1){
  cat("Function is ill-conditioned for x=",x2bar)
}