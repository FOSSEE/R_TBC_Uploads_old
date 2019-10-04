
# Chapter 4
# Example 4_18 page no. 129 from the pdf..
# Expectation Value of Linear Combination Of Random Variables 

# given X a random variable find the expected value of another random variable 4X+3

f <- function(x){
  
  x*x/3
  
}

# using property E(aX+b)= aE(X)+b


cat("The value of E(4X+3) is",4*integrate(function(x){x*f(x)},-1,2)$value + 3)

