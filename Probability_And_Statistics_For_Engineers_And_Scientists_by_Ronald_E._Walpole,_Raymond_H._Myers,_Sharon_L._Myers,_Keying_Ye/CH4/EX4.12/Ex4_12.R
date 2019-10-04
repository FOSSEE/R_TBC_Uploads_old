
# Chapter 4
#example 4.12 page no. 123 from the pdf..
# Variance of a new Random variable given the Density Function..

# given a random variable find the variance of g(X)=4X+3

f <- function(x){
  
  x*x/3
  
}

# using theorem 4.3 as given on page no. 122

cat("The variance of random variable g(4X+3) is",integrate(function(x){f(x)*((4*x+3-8)^2)},-1,2)$value)






