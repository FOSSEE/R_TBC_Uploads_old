
# Chapter 11
# Example 11.5 page no. 407 from the pdf..
# Hypothesis Testing on Intercept of Regression line..

# Null - beta0 =0
# alternate - beta0 != 0

x <- c(3,7,11,15,18,27,29,30,30,31,31,32,33,33,34,36,36,36,37,38,39,39,39,40,41,42,42,43,44,45,46,47,50)

y <- c(5,11,21,16,16,28,27,25,35,30,40,32,34,32,34,37,38,34,36,38,37,36,45,39,41,40,44,37,44,46,46,49,51)

pol <- data.frame(x,y)   # making data frame of observations..

line <- lm(y~x,data = pol)  # regression model..

a <- summary(line) # summary of the regression line

cat("The p-value is",a$coef[1,"Pr(>|t|)"],"which is less than 0.05 hence we conclude that beta0 != 0")

