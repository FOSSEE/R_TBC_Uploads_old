                                    # Page no. : 721 - 724

# Transformations Involving the Dependent Variables

x <- c(2289,2113,2180,2448,2026,2702,2657,2106,3226,3213,3607,2888)   # Weight
y <- c(28.7,29.2,34.2,27.9,33.3,26.4,23.9,30.5,18.1,19.5,14.3,20.9)   # Miles Per Gallon

DF <- data.frame(x,y)

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(x,y)) + geom_point() + labs(title = "Scatter Plot between Weight and Miles
                                           Per Gallon", x = "Weight", y = "Miles Per Gallon")

model <- lm(y ~ x, data = DF)
summary(model)

b1 <- model$coefficients[1]
b2 <- model$coefficients[2]

cat("Regression Equation is sales =",b1,"+",b2,"months")

# Prediction

predicted_miles_per_gallon <- predict(model)

DF <- cbind(DF, predicted_miles_per_gallon)

# Standard Residuals

standard_residuals <- rstandard(model)

DF <- cbind(DF, standard_residuals)


ggplot(DF,aes(predicted_miles_per_gallon, standard_residuals)) + geom_point() + 
  geom_hline(yintercept = 0, linetype=2) +
  labs(title = "Scatter Plot between Predicted Miles per Gallon and Standard Residuals", 
        x = "Predicted Miles per Gallon", y = "Standard Residuals") 

# Log Transformation

#log_x <- log(x)
log_y <- log(y)

DF2 <- data.frame(x, log_y)

options(scipen = 999)   # To display not in scientific notation
model <- lm(log_y ~ x, data = DF2)
summary(model)   

b1 <- model$coefficients[1]
b2 <- model$coefficients[2]

cat("Regression Equation is sales =",b1,"+",b2,"months")

# Prediction

predicted_miles_per_gallon <- predict(model)

DF2 <- cbind(DF2, predicted_miles_per_gallon)

# Standard Residuals

standard_residuals <- rstandard(model)

DF2 <- cbind(DF2, standard_residuals)


ggplot(DF2,aes(predicted_miles_per_gallon, standard_residuals)) + geom_point() + 
  geom_hline(yintercept = 0, linetype=2) + labs(title = "Scatter Plot between Log
Transformation of Predicted Miles per Gallon and Standard Residuals", 
       x = "Predicted Miles per Gallon", y = "Standard Residuals") 
