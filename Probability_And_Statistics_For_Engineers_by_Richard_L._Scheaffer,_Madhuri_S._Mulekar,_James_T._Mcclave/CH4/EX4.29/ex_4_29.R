cat("ways in which no line chosen more than once ", factorial(10)/factorial(5))
a <- factorial(10)/factorial(5)
cat("total no. of ways to select a line ", 10 ^ 5)
b <- 10^5
cat("prob no line chosen more than once " ,a/b)
c <- a/b
cat("prob atleast one line chosen more than once " , 1-c)
