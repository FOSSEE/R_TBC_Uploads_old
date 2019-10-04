
# Chapter 4
# Example 4.7 page no. 116 from the pdf..
# Expected Value of Joint Density Function


# to find the expected value of density function

# given function

a <- function(x,y){
  
  (x*(1+3*y*y))/4
  
}

# making a expectation value function

b <- function(x,y){            
  a(x,y)*y
  
}

# using the expression to find the expectation value

print("The Value of E(Y/X) is")

integrate(function(y){
  
  sapply(y,function(y){
    
    integrate(function(x)b(x,y),0,2)$value
  })
},0,1)

