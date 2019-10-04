
# Chapter 12
# Example 12.9 page no. 474 from the pdf..
# to find the model for data which have 3 levels in a variable..

y <- c(292,329,352,378,392,410,198,227,277,297,364,375,167,225,247,268,288,342)

x <- c(6.5,6.9,7.8,8.4,8.8,9.2,6.7,6.9,7.5,7.9,8.7,9.2,6.5,7.0,7.2,7.6,8.7,9.2)

p <- c(1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3)

dat <- data.frame(y,x,factor(p))

dat$factor.p. <- relevel(dat$factor.p.,ref=3)

c <- lm(y ~ x +factor.p.,data= dat)

cat("The model suggests")

coefficients(c) # Coefficients of the model..

summary(c) # Summary of the regression model..
