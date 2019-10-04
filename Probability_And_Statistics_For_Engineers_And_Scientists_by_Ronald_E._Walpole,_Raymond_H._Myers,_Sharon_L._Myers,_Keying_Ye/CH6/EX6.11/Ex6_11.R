
# Chapter 6
# Example 6.11 page no. 184 from the pdf..
# Applications of Normal Distribution..

# Note - We just have to calculate d in example 6.10, also many questions of same type have been solved previously..

# given mean resistance= 40 and sd= 2 , normal distribution


#  to find %age of resistors exceeding 43 ohms

cat("The %age of resistors having resistance exceeding 43ohms is",100*pnorm(43,40,2,lower.tail = F),"%")





