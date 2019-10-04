# chapter 3
# Example 3.19 and 3.20 both are same in concept, just the function is changed, I am solving 3.20, so you can do the same for 3.19..
# Chapter 3.20 page no 100 from the pdf..
# Mariginal and Conditional Densities Evaluation..

# given the joint distribution function 
a <- function(x,y){
  
  x*(1+3*y*y)/4
  
}

# with limits 0<x<2, 0<y<1

# given marginal density 
 b <- function(x){
   
   x/2
   
 }

c <- function(y){
  
  (1+3*y*y)/2
  
}

# to find a(x|y)
# to find P(0.25<x<0.5|y=1/3)

d <- function(x){
  
  a(x,1/3)/c(1/3)
  
}

cat("The value of conditional Probability P(0.25<X<0.5|Y = 1/3) is",integrate(d,0.25,0.5)$value)





