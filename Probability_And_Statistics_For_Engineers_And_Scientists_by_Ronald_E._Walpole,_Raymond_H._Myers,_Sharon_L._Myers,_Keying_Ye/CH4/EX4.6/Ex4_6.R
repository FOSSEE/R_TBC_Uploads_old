# Chapter 4
# Example 4.6, page no. 116 from the pdf..
# Expected value of Discrete Joint Probability Distribution


# given 2 random variables with joint prob. distribution,
# find the expected value g(X,Y) = XY.

f <- matrix(c(3/28,3/14,1/28,9/28,3/14,0,3/28,0,0),ncol = 3)


ans <- 0

for(x in 0:2){
  
  for(y in 0:2){
    
    ans <- ans + x*y*f[x+1,y+1]
    
  }
}

cat("The expected value of g(X,Y)= XY is",ans)
