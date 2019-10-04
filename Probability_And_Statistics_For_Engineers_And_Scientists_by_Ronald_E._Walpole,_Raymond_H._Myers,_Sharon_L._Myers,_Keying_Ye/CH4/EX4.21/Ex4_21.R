
# Chapter 4
# example 4.21 on page no. 131 from the pdf..
# Expected Value of 2 Independent Random Variable..

# to prove with example for 2 independent random variables E(XY) = E(x)*E(Y)

# XY function
f <- function(x,y){
  
  x*(1+3*y*y)/4
  
}

E_XY <- integrate(function(y){
  
  sapply(y,function(y){
    
    integrate(function(x){f(x,y)*x*y},0,2)$value
  })},0,1)

# finding E(X) and E(Y) value
E_X <- integrate(function(x){x*x/2},0,2)$value

E_Y <- integrate(function(y){y*(1+3*y*y)/2},0,1)$value

cat("The value of E(XY) is",E_XY$value,"and the value of E(X)*E(Y) is",E_X*E_Y,"Hence proved.")

