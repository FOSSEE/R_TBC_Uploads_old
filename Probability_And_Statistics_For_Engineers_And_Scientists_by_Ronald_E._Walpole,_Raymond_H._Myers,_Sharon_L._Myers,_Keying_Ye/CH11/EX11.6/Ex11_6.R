
# Chapter 11
# Example 11.6 page no. 409 from the pdf..
# To find the confidence interval of the mean response..

x <- c(3,7,11,15,18,27,29,30,30,31,31,32,33,33,34,36,36,36,37,38,39,39,39,40,41,42,42,43,44,45,46,47,50)

y <- c(5,11,21,16,16,28,27,25,35,30,40,32,34,32,34,37,38,34,36,38,37,36,45,39,41,40,44,37,44,46,46,49,51)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)

# here x0 <- 20% 
data <- data.frame(x=20)

c <- predict(line,data, interval = "confidence")

cat("When solid reduction is 20%, the confidence interval of chemical oxygen demand is",c[2],c[3])

# the may vary slightly due to approximations in T.B.





