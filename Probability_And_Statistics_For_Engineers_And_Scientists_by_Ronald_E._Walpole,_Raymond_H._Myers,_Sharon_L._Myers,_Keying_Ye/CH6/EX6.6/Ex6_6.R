
# Chapter 6
# Example 6.6 page no. 181 from the pdf..
# Using Normal Curve In Reverse..


# given population mean= 40, sd= 6

cat("The value of x that has 45% of the area to the left is",qnorm(0.45,40,6))

# the deviation of this value from the T.B is less than 2%.

cat("The value of x that has 14% of the area to the right is",qnorm(0.14,40,6,lower.tail = F))

#The answer in T.B is approximated to 2 decimal places..
