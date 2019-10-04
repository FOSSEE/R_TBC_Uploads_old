y <- c(4.08,3.40,3.51,3.09,2.92,1.94,4.11,3.16,3.75,3.60)
x <- c(21.0,12.0,25.2,10.4,30.9,6.8,19.6,14.5,25.0,19.1)
model <- lm(y ~ x + I(x^2))
model
summary(model)
cat("quadratic model provide accurate prediction")