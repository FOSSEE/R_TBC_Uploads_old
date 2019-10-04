
# Chapter 3
# Example 3.11 Page no. 89 from the pdf..
# Probability Density FUnction Problem..

# A part of the Problem..
# to check the probability density function

a <- function(x){
  
  x*x/3
}

# to check the conditions of probability density function


cat("the Integration is",integrate(a,-1,2)$value,"nearly 1 with very small margin of error we can say that it is a prob. density function")

# B Part of the Problem..
# to find P(0<x<=1)

cat("The value of P(0<x<=1) is",integrate(a,0,1)$value)

#this answer matches with the answer in  the textbook.





