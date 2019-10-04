
# Chapter 4
# Example 4.14 page no. 125 from the pdf..
# Covariance Of Two Random Variables given Joint Density Function..


# given a joint density function of 2 random variables X and Y
# find the covariance of X and Y..

f <- function(x,y){
  
  8*x*y
  
}

g <- function(x){
  
  4*(x^3)
  
}

h <- function(y){
  
  4*y*(1-y*y)
  
}

# finding E(X) and E(Y) from marginal densities..

mu_x <- integrate(function(x){x*g(x)},0,1)$value

mu_y <- integrate(function(y){y*h(y)},0,1)$value

# E(XY) from joint probability distributon..
E_XY <- integrate(function(y){
  
  sapply(y,function(y){
    
    integrate(function(x){f(x,y)*x*y},y,1)$value
  })},0,1)

cat("The covariance of X and Y is",E_XY$value-mu_x*mu_y)
