                                      # Page no. : 676 - 679

# Residual Analysis

miles <- c(100, 50, 100, 100, 50, 80, 75, 65, 90, 90)
deliveries <- c(4, 3, 4, 2, 2, 2, 3, 4, 3, 2)
time <- c(9.3, 4.8, 8.9, 6.5, 4.2, 6.2, 7.4, 6.0, 7.6, 6.1)

DF <- data.frame(miles, deliveries, time)

regressor <- lm(time ~ miles + deliveries, data = DF)
res <- summary(regressor)

predict <- predict(regressor)
residuals <- DF$time - predict
std_residuals <- rstandard(regressor)

DF <- cbind(DF, predict, residuals, std_residuals)

View(DF)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(predict, std_residuals)) + geom_point() + geom_hline(yintercept = 0, 
      linetype=2) + labs(title = "Plot between predicted values and standardizes residuals", x = 
                                    "Prediction", y = "Standardization Residual")


leverage <- hatvalues(regressor)
cook_dist <- cooks.distance(regressor)   

DF <- cbind(DF, leverage, cook_dist)

View(DF)