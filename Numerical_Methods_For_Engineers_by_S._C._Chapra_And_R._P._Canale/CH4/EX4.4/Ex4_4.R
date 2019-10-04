DD <- function(expr, name, order = 1) {
  if(order < 1) stop("'order' must be >= 1")
  if(order == 1) D(expr, name)
  else DD(D(expr, name), name, order - 1)
}

f <- function(x) {
  return(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2)
}

x=0.5
h= 0.5
x1=x-h
x2=x+h
#forward difference method
fdx1=(f(x2)-f(x))/h
#derivative at x
et1=abs((fdx1-eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))/eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))*100
#backward difference method
fdx2=(f(x)-f(x1))/h
#derivative at x
et2=abs((fdx2-eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))/eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))*100
#central difference method
fdx3=(f(x2)-f(x1))/(2*h)
#derivative at x
et3=abs((fdx3-eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))/eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))*100
cat("For h=",h,"\n",
    "Derivative at x by forward difference method=",fdx1,"and percent error=",et1,"\n",
    "Derivative at x by backward difference method=",fdx2,"and percent error=",et2,"\n",
    "Derivative at x by central difference method=",fdx3,"and percent error=",et3,"\n")


h= 0.25
x1=x-h
x2=x+h
#forward difference method
fdx1=(f(x2)-f(x))/h
#derivative at x
et1=abs((fdx1-eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))/eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))*100
#backward difference method
fdx2=(f(x)-f(x1))/h
#derivative at x
et2=abs((fdx2-eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))/eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))*100
#central difference method
fdx3=(f(x2)-f(x1))/(2*h)
#derivative at x
et3=abs((fdx3-eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))/eval(DD(expr = expression(-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2),name = "x",order = 1)))*100
cat("For h=",h,"\n",
    "Derivative at x by forward difference method=",fdx1,"and percent error=",et1,"\n",
    "Derivative at x by backward difference method=",fdx2,"and percent error=",et2,"\n",
    "Derivative at x by central difference method=",fdx3,"and percent error=",et3,"\n")