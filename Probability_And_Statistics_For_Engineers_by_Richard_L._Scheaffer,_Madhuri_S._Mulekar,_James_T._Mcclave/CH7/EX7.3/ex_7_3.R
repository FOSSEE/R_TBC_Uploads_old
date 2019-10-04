
# Joint Density Function of Continuous Random Variable..

a <- function(x1,x2){
  2 * (1-x1)
  
}


#  to find the probability of a region A:{(x1,x2)| 0<x1<0.5, 0.4<x2<0.7}
cat("The probability is", " ")

integrate(function(x2){
  
  sapply(x2,function(x2){
    
    integrate(function(x1)a(x1,x2),0,0.5)$value
  })
},0.4,0.7)
