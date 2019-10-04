                                    # Page no. :  679 - 680

# Influential Observations

x <- c(1, 1, 2, 3, 4, 4, 5, 15)
y <- c(18, 21, 22, 21, 23, 24, 26, 39)

DF <- data.frame(x, y)

regressor <- lm(y ~ x, data = DF)
res <- summary(regressor)

lev <- hatvalues(regressor)   
DF <- cbind(DF, lev)

View(DF)


# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(x, y)) + geom_point() + geom_smooth(method = "lm", se = F) +
  labs(title = "Plot between x and y", x = "X", y = "Y")


cat("Equation is y = ",res$coefficients[1],"+",res$coefficients[2],"x1")


# Removing Influential Observation

x <- c(1, 1, 2, 3, 4, 4, 5)
y <- c(18, 21, 22, 21, 23, 24, 26)

DF <- data.frame(x, y)

regressor <- lm(y ~ x, data = DF)
res <- summary(regressor)

cat("Equation is y = ",res$coefficients[1],"+",res$coefficients[2],"x1")
