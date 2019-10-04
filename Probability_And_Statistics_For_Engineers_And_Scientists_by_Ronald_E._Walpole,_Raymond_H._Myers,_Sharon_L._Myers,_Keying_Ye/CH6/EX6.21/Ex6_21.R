
# Chapter 6
# Example 6.21 page 199 from the pdf..
# Function Which resembles Exponential Distribution..

# given a density function which resembles exponential function 
# with beta= 4
# to find P(Y > 6)


cat("The value of P(Y > 6) is",pexp(6,rate = 1/4,lower.tail = F))

cat("the above statement can interpret as the prob. that the washing machine wil require major repair after year 6 is",pexp(6,rate = 1/4,lower.tail = F))

cat("The prob. that a major repair is necessary in the first year is",pexp(1,rate = 1/4))



