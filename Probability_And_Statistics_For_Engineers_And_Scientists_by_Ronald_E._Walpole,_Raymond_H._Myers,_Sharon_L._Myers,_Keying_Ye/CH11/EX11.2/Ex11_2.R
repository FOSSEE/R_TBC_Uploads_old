
# Chapter 11
# Example 11.2 page no. 403 from the pdf..
# Confidence Interval for Slopes of Regression Line..

# to find the confidence interval of the given data..

x <- c(3,7,11,15,18,27,29,30,30,31,31,32,33,33,34,36,36,36,37,38,39,39,39,40,41,42,42,43,44,45,46,47,50)

y <- c(5,11,21,16,16,28,27,25,35,30,40,32,34,32,34,37,38,34,36,38,37,36,45,39,41,40,44,37,44,46,46,49,51)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)

cat("The 95% confidence interval for beta1(i.e slope) in the regression line is",confint(line,'x',level=0.95))

# The answer matches with the answer in the T.B upto 3 decimal places, as T.B answer is approximated..


