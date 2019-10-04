                                    # Page no. : 714 - 717

# General Linear Model

x <- c(41,106,76,10,22,12,85,111,40,51,9,12,6,56,19)   # Months Employed
y <- c(275,296,317,376,162,150,367,308,189,235,83,112,67,325,189)   # Scales Sold 

DF <- data.frame(x,y)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(x,y)) + geom_point() + labs(title = "Scatter Plot between Months
  Employed and Scales sold", x = "Months Employed", y = "Scales Sold")

model <- lm(y ~ x, data = DF)
summary(model)

b1 <- model$coefficients[1]
b2 <- model$coefficients[2]

cat("Regression Equation is sales =",b1,"+",b2,"months")
# Book Answer is sales = 111 + 2.38 months   (Data is wrongly used in book)

predicted_scales_sold <- predict(model)

DF <- cbind(DF, predicted_scales_sold)

# Standard Residuals

standard_residuals <- rstandard(model)

DF <- cbind(DF, standard_residuals)

ggplot(DF,aes(predicted_scales_sold, standard_residuals)) + geom_point() +
  geom_hline(yintercept = 0, linetype=2) +
labs(title = "Scatter Plot between Predicted scales sold and Standard Residuals", 
     x = "Predicted scales sold", y = "Standard Residuals")

                                      # Page no. : 716 - 717

x2 <- x**2

DF2 <- data.frame(x,x2,y) 

model2 <- lm(y ~ x + x2, data = DF2)
summary(model2)

b1 <- model2$coefficients[1]
b2 <- model2$coefficients[2]
b3 <- model2$coefficients[3]

cat("Regression Equation is sales =",b1,"+",b2,"months","+",b3,"monthsq")
# Book Answer is sales = 45.3 + 6.34 months - 0.0345 monthsq  (Data is wrongly used in book)

predicted_scales_sold2 <- predict(model2)

DF2 <- cbind(DF2, predicted_scales_sold2)

# Standard Residuals

standard_residuals2 <- rstandard(model2)

DF2 <- cbind(DF2, standard_residuals2)

ggplot(DF2,aes(predicted_scales_sold2, standard_residuals2)) + geom_point() +
  geom_hline(yintercept = 0, linetype=2) +
  labs(title = "Scatter Plot between Predicted scales sold and Standard Residuals", 
       x = "Predicted scales sold", y = "Standard Residuals")