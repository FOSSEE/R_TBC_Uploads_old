# Statistics for Management and Economics by Gerald Keller
# Chapter 16: SIMPLE LINEAR REGRESSION AND CORRELATION
# Example 16.1 on Pg 638
# Annual Bonus and Years of Experience 


years_of_exp <- c(1,2,3,4,5,6) #years of experience - Explanatory variable
annual_bonus <- c(6,1,9,5,17,12) #annual bonus in 1000s - Respone variable

#determine the straight line relationship between years of experience and annual bonus using least squares

regression_line <- lm(annual_bonus ~ years_of_exp) #gives regression line
summary(regression_line) #gives the Residuals, Std Error etc

plot(years_of_exp, annual_bonus) #scatter plot
abline(lm(annual_bonus ~ years_of_exp))

cat("The least squares or regression line is Y =", 
    regression_line$coefficients[1], "+", regression_line$coefficients[2], "X", 
    "where Y is Annual Bonus and X is years of job experience")

# The least squares line is Y = 0.934 + 2.114X

#End

