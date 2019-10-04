
# Chapter 4
# example 4.20 page no. 130 from the pdf..
# Expectation Value Evaluation Using Properties Given a Density Function..


# given a density function of a random variable find the value of E(X^2+X-2) using properties..

f <- function(x){
  
  2*(x-1)
  
}

# using properties..

cat("The value of E(X^2+X-2) is",integrate(function(x){x*x*f(x)},1,2)$value + integrate(function(x){x*f(x)},1,2)$value - integrate(function(x){2*f(x)},1,2)$value)



