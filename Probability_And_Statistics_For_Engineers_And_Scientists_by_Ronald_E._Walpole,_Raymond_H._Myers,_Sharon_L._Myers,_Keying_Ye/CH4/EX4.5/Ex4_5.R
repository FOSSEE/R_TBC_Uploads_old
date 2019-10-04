# Chapter 4
# example 4.5 page no. 115 from the pdf.
# Expected Value of New Random Variable 

# to find expected value given a random variable f(x)= x^2/3 of g(X)= 4X +3

f <- function(x){
  
  (4*x+3)*x*x/3
  
}

cat("The expected value is",integrate(f,-1,2)$value)


