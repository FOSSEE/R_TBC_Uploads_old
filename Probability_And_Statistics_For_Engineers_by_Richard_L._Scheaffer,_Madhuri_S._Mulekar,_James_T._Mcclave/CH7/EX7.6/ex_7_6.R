
# using conditional probability distribution

f <- function(x,y){
  3*x
}

f1 <-  function(x){
   3*x*x
 }
 
 
d <- function(y){
  
  f(0.5,y)/f1(0.5)
  
   }
  
   
cat("The value of conditional Probability P(0<X2<0.2|X1= 0.5) is ", integrate(Vectorize(d), 0, 0.2)$value)
