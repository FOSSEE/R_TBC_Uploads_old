# Chapter 4
# Example 4.16 page no. 126 from the pdf..
# Correlation Coefficient Of 2 Random Variables Given Joint Density Function..


# given a joint density function of 2 random variables X and Y
# find the correlation coefficient of X and Y..

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

# finding sigma_x and sigma_y from marginal densities..
sig_x <- integrate(function(x){x*x*g(x)},0,1)$value - mu_x^2

sig_y <- integrate(function(y){y*y*h(y)},0,1)$value - mu_y^2

# E(XY) from joint probability distributon..
E_XY <- integrate(function(y){
  
  sapply(y,function(y){
    
    integrate(function(x){f(x,y)*x*y},y,1)$value
  })},0,1)

# finding sigma_xy 
sig_xy <- E_XY$value-mu_x*mu_y

cat("The correlation coefficient of X and Y is",sig_xy/sqrt(sig_x*sig_y))

