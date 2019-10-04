
# Chapter 18
# example 18.9 page no. 717 from the pdf..
# to find the bayes estimate of p for all values of x, for example 18.2..

# refer example 18.2 
# refer section 6.8 on page 201...
# the posterior can also be written as B(x+1,3-x)

f <- function(x){
  
  3*choose(2,x)
  
}

g <- function(p,a){
  
  (p^(a+1))*((1-p)^(2-a))
  
}
cat("The bayes estimate for the above distribution for different values of x is")

for(x in 0:2){
  
  cat("for x =",x,"p star is",f(x)*integrate(function(d){g(d,x)},0,1)$value,"\n")
  
}




