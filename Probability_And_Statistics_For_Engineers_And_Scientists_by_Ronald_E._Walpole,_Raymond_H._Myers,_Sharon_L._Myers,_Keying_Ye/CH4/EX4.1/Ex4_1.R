
# Chapter 4
# Example 4.1 Page no. 113 from the pdf..
# Expected Value Evaluation Problem 

# to find the expectation value 
# out of 7, 4 good and 3 defective components, and sample of 3 is taken, find the expectation value

a <- function(x){
  
  choose(4,x)*choose(3,3-x)/choose(7,3)
  
}


b <- a(0:3) # to create a series of vector for X..

cat("The expectation value of this problem is",weighted.mean(0:3,b))









