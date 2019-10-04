
# Chapter 3
# Example 3.15 page no.96 from the pdf..
# Joint Density Function of Continuous Random Variable..

# A part of the Problem 3.15
# to verify the conditions of joint density function and find the probabilities of any intervals

# the joint density function..
a <- function(x,y){
  
  (2*(2*x+3*y))/5
  
  
}

print("The value of the integral over whole region is:")

integrate(function(y){
  
  sapply(y,function(y){
    
    integrate(function(x)a(x,y),0,1)$value
  })
},0,1)

# the integral is 1 then it is a joint density function

# Part B of the Problem 3.15
# to find the probability of a region A:{(x,y)| 0<x<0.5, 0.25<y<0.5}

cat("The probability is ","  ")

integrate(function(y){
  
  sapply(y,function(y){
    
    integrate(function(x)a(x,y),0,0.5)$value
    
  })
  
},0.25,0.5)








