
# Chapter 4
# Example 4.8 page no. 120 from the pdf.. 
# Variance Of Discrete Distribution..

# given two distribution finding out which set has higher variance

# first distribution
a <- c(0.3,0.4,0.3)

b <- weighted.mean(1:3,a)

c1 <- function(x){
  
  (x-b)*(x-b)
  
}

d <- sum(c1(1:3)*a)

# second Distribution..
a1 <- c(0.2,0.1,0.3,0.3,0.1)

b1 <- weighted.mean(0:4,a1)  # since b and b1 are same..


d1 <- sum(c1(0:4)*a1)

cat("Since Variance of B is",d1,"and Variance of A is",d,"Variance of B is greater than A")


