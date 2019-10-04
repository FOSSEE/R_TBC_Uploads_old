
# Chapter 4
# Example 4.3 page no. 114 from the pdf..
# Expected Value of probability density function

# given that a(x) if x>100 else 0

a <- function(x){
  
  20000/(x*x*x)
  
}

a1 <- function(x){
  
  x*a(x)
  
}

cat("The Expected life of this type of device is:",integrate(a1,lower = 100,upper = Inf)$value)

