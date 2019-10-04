
# Chapter 3
# Example 3.12 Page no. 90 from the pdf..
# Cumulative Distribution Function of Continuous Random Variable

# given a density function find the value of P(0<X<=1)

# the Density Function..
f <- function(t){
  
  t*t/3
  
}
  
cat("The value of P(0<X<=1) is",integrate(f,0,1)$value)


