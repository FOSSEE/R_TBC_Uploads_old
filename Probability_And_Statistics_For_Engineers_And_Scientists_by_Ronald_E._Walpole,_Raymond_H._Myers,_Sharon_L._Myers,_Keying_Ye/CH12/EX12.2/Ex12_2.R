
# Chapter 12
# Example 12.2 page no. 446 from the pdf..
# to find the estimate of polynomial regression..

x <- c(0,1,2,3,4,5,6,7,8,9)

y <- c(9.1,7.3,3.2,4.6,4.8,2.9,5.7,7.1,8.8,10.2)

pol <- lm(y~x+I(x^2))

c <- coefficients(pol)

dat <- data.frame(x=2)


cat("The fitted polynomial is",c[1],c[2],"*x +",c[3],"*x^2")

cat("When x=2, the estimate is",predict(pol,dat))
