# Chapter 4
# example 4.10 page no. 121 from the pdf..
# Mean And Variance of Continuous Random Variable..

# given a random variable X having the prob. density 
# find the mean and variance of X..

f <- function(x){
  
  2*(x-1)
  
}

cat("The mean is mu = E(X) =",integrate(function(x){x*f(x)},1,2)$value)

cat("And the Variance is E(X^2)-[E(x)]^2 = ",integrate(function(x){x*x*f(x)},1,2)$value - (integrate(function(x){x*f(x)},1,2)$value)^2)


