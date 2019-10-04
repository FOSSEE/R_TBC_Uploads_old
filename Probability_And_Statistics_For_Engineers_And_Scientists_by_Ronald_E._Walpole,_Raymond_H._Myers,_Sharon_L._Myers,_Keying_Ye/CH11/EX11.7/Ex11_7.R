
# Chapter 11
# Example 11.7 page no. 411 from the pdf..
# To Find Prediction Interval..

# To find the 95% prediction interval for y0 when x0 is 20%

x <- c(3,7,11,15,18,27,29,30,30,31,31,32,33,33,34,36,36,36,37,38,39,39,39,40,41,42,42,43,44,45,46,47,50)

y <- c(5,11,21,16,16,28,27,25,35,30,40,32,34,32,34,37,38,34,36,38,37,36,45,39,41,40,44,37,44,46,46,49,51)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)


# making a new data frame to predict..

data <- data.frame(x=20)

d <- predict(line,data, interval = "prediction")

cat("The 95% prediction interval for y0 when x0=20% is",d[2],d[3])


# the answer may vary slightly due to approximation..