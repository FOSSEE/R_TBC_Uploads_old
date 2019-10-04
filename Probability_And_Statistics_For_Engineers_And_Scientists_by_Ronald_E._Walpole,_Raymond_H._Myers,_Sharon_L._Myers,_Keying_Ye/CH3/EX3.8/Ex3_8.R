
# Chapter 3
# Example 3.8 page no. 84 from the pdf..
# Discrete Probability Problem..

# From 3.1 to 3.8 the problems are too easy and theoretical..
# to find the probability distribution of number if defective laptops if 2 are drawn at a time from 20.

#making a general function for the above distribution..
a <- function(x){
  
  choose(3,x)*choose(17,2-x)/choose(20,2)
  
}

# The Distribution..
cat("The probability distribution for x=0 is",a(0))

cat("The probability distribution value for x=1 is",a(1))

cat("The probability distribution for x=2 is",a(2))





