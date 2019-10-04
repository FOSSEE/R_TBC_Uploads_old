
# Chapter 3
# Example 3.14 Page no. 95 from the pdf..
# Joint Probability Distribution of Discrete Random Variable..

# Note - Example 3.13 is theoretical..

# the formula for joint Prob. distribution..
a <- function(x,y){
  
  choose(3,x)*choose(2,y)*choose(3,2-x-y)/choose(8,2)
  
}

# to find probability that it will fall in x+y<=1


cat("The probability that x,y fall in region x+y<=1 is",a(0,0)+a(0,1)+a(1,0))


