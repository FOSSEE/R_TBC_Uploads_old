                                    # Page no. : 648 - 649

# Two Independent Variables

driving_assignment <- c(1,2,3,4,5,6,7,8,9,10)
x1 <- c(100,50,100,100,50,80,75,65,90,90)   # Miles Traveled
x2 <- c(4,3,4,2,2,2,3,4,3,2)   # Number of Deliveries
y <- c(9.3,4.8,8.9,6.5,4.2,6.2,7.4,6.0,7.6,6.1)   # Travel Time (hours)

DF <- data.frame(driving_assignment, x1, x2, y)

model <- lm(y ~ x1 + x2, data = DF)
summary(model)

b0 <- model$coefficients[1]
b1 <- model$coefficients[2]
b2 <- model$coefficients[3]

cat("Multiple Regression Equation is y_cap =",b0,"+",b1,"x1 +",b2,"x2")
