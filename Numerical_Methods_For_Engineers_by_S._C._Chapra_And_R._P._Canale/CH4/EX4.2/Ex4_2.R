DD <- function(expr, name, order = 1) {
  if(order < 1) stop("'order' must be >= 1")
  if(order == 1) D(expr, name)
  else DD(D(expr, name), name, order - 1)
}

f <- function(x) {
  return(cos(x))
}

pi = 3.1415927
et = matrix(0,7)

xi=pi/4
xf=pi/3
h=xf-xi
fi=f(xi)
#function value at xi
ffa=f(xf)
#actual function value at xf

#for n=0, i.e, zero order approximation
ff=fi;
et[1]=(ffa-ff)*100/ffa
#percent relative error at x=1
cat("The value of f at x=1 due to zero order approximation :",ff,"\n",
    "% relative error :",et[1],"\n",
    "----------------------------------------------\n")


#for n=1, i.e, first order approximation
f1 <- function(x) {
  return(eval(DD(expr = expression(cos(x)),"x",1)))
}
f1i=f1(xi)
#value of first derivative of function at xi
f1f=fi+f1i*h
#value of first derivative of function at xf
et[2]=(ffa-f1f)*100/ffa
#% relative error at x=1
cat("The value of f at x=1 due to first order approximation :",f1f,"\n",
    "% relative error :",et[2],"\n",
    "----------------------------------------------\n")


#for n=2, i.e, second order approximation
f2 <- function(x) {
  return(eval(DD(expr = expression(cos(x)),"x",2)))
}
f2i=f2(xi)
#value of second derivative of function at xi
f2f=f1f+f2i*(h^2)/factorial(2)
#value of second derivative of function at xf
et[3]=(ffa-f2f)*100/ffa
#% relative error at x=1
cat("The value of f at x=1 due to second order approximation :",f2f,"\n",
    "% relative error :",et[3],"\n",
    "----------------------------------------------\n")

#for n=3, i.e, third order approximation
f3 <- function(x) {
  return(eval(DD(expr = expression(cos(x)),"x",3)))
}
f3i=f3(xi)
#value of third derivative of function at xi
f3f=f2f+f3i*(h^3)/factorial(3)
#value of third derivative of function at xf
et[4]=(ffa-f3f)*100/ffa
#% relative error at x=1
cat("The value of f at x=1 due to third order approximation :",f3f,"\n",
    "% relative error :",et[4],"\n",
    "----------------------------------------------\n")

#for n=4, i.e, fourth order approximation
f4 <- function(x) {
  return(eval(DD(expr = expression(cos(x)),"x",4)))
}
f4i=f4(xi)
#value of fourth derivative of function at xi
f4f=f3f+f4i*(h^4)/factorial(4)
#value of fourth derivative of function at xf
et[5]=(ffa-f4f)*100/ffa
#% relative error at x=1
cat("The value of f at x=1 due to fourth order approximation :",f4f,"\n",
    "% relative error :",et[5],"\n",
    "----------------------------------------------\n")


#for n=5, i.e, fifth order approximation
f5i=(f4(1.1*xi)-f4(0.9*xi))/(2*0.1)
#value of fifth derivative of function at xi (central difference method)
f5f=f4f+f5i*(h^5)/factorial(5)
#value of fifth derivative of function at xf
et[6]=(ffa-f5f)*100/ffa
#% relative error at x=1
cat("The value of f at x=1 due to fifth order approximation :",f5f,"\n",
    "% relative error :",et[6],"\n",
    "----------------------------------------------\n")


#for n=6, i.e, sixth order approximation
f6 <- function(x) {
  return(eval(DD(expr = expression(cos(x)),"x",4)))
}
f6i=(f4(1.1*xi)-2*f4(xi)+f4(0.9*xi))/(0.1^2)
#value of sixth derivative of function at xi (central difference method)
f6f=f5f+f6i*(h^6)/factorial(6)
#value of sixth derivative of function at xf
et[7]=(ffa-f6f)*100/ffa
#% relative error at x=1
cat("The value of f at x=1 due to sixth order approximation :",f6f,"\n",
    "% relative error :",et[7],"\n",
    "----------------------------------------------\n")