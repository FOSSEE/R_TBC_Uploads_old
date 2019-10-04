DD <- function(expr, name, order = 1) {
  if(order < 1) stop("'order' must be >= 1")
  if(order == 1) D(expr, name)
  else DD(D(expr, name), name, order - 1)
}

f <- function(x) {
  return(-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2)
}

xi=0
xf=1
h=xf-xi
fi=f(xi)
#function value at xi
ffa=f(xf)
#actual function value at xf

#for n=0, i.e, zero order approximation
ff=fi
Et = matrix(0,5)
Et[1]=ffa-ff
#truncation error at x=1
cat("The value of f at x=0 :",fi,"\n",
    "The value of f at x=1 due to zero order approximation :",ff,"\n",
    "Truncation error :",Et[1],"\n",
    "----------------------------------------------\n")

#for n=1, i.e, first order approximation
f1 <- function(x) {
  return(eval(DD(expr = expression(-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2),"x",1)))
}

f1i=f1(xi)
#value of first derivative of function at xi
f1f=fi+f1i*h
#value of first derivative of function at xf
Et[2]=ffa-f1f
#truncation error at x=1
cat("The value of first derivative of f at x=0 :",f1i,"\n",
    "The value of f at x=1 due to first order approximation :",f1f,"\n",
    "Truncation error :",Et[2],"\n",
    "----------------------------------------------\n")


#for n=2, i.e, second order approximation
f2 <- function(x) {
  return(eval(DD(expr = expression(-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2),"x",2)))
}


f2i=f2(xi)
#value of second derivative of function at xi
f2f=f1f+f2i*(h^2)/factorial(2)
#value of second derivative of function at xf
Et[3]=ffa-f2f
#truncation error at x=1
cat("The value of first derivative of f at x=0 :",f2i,"\n",
    "The value of f at x=1 due to first order approximation :",f2f,"\n",
    "Truncation error :",Et[3],"\n",
    "----------------------------------------------\n")

#for n=3, i.e, third order approximation
f3 <- function(x) {
  return(eval(DD(expr = expression(-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2),"x",3)))
}
f3i=f3(xi)
#value of third derivative of function at xi
f3f=f2f+f3i*(h^3)/factorial(3)
#value of third derivative of function at xf
Et[4]=ffa-f3f
#truncation error at x=1
cat("The value of first derivative of f at x=0 :",f3i,"\n",
    "The value of f at x=1 due to first order approximation :",f3f,"\n",
    "Truncation error :",Et[4],"\n",
    "----------------------------------------------\n")

#for n=4, i.e, fourth order approximation
f4 <- function(x) {
  return(eval(DD(expr = expression(-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2),"x",4)))
}
f4i=f4(xi)
#value of fourth derivative of function at xi
f4f=f3f+f4i*(h^4)/factorial(4)
#value of fourth derivative of function at xf
Et[5]=ffa-f4f
#truncation error at x=1
cat("The value of first derivative of f at x=0 :",f4i,"\n",
    "The value of f at x=1 due to first order approximation :",f4f,"\n",
    "Truncation error :",Et[5],"\n",
    "----------------------------------------------\n")