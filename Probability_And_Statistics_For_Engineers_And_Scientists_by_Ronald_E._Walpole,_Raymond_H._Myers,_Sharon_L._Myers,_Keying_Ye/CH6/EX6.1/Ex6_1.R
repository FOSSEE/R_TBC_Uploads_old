
# Chapter 6
# Example 6.1 page no. 171 from the pdf..
# Uniform Distribution Problem..

# to find the prob. density function of uniform distribution over 0 to 4

a <- function(x){
  
  if(x>=0 & x<=4){
    
    dunif(x,0,4)
    
  }
  
}

# P(X>=3)

cat("The probability that any conference last at least 3 hours is",1-punif(3,0,4))



